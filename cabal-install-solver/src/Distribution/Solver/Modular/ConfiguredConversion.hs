module Distribution.Solver.Modular.ConfiguredConversion
    ( convCP
    ) where

import Data.Maybe
import Prelude hiding (pi)
import Data.Either (partitionEithers)

import Distribution.Package (UnitId, packageId)

import qualified Distribution.Simple.PackageIndex as SI

import Distribution.Solver.Modular.Configured
import Distribution.Solver.Modular.Package

import           Distribution.Solver.Types.ComponentDeps (ComponentDeps)
import qualified Distribution.Solver.Types.PackageIndex as CI
import           Distribution.Solver.Types.PackagePath
import           Distribution.Solver.Types.ResolverPackage
import           Distribution.Solver.Types.SolverId
import           Distribution.Solver.Types.SolverPackage
import           Distribution.Solver.Types.InstSolverPackage
import           Distribution.Solver.Types.SourcePackage

-- XXX/srk
import Debug.Trace
import Text.Pretty.Simple
import qualified Data.Text.Lazy as T
import Distribution.Solver.Modular.IndexConversion (tracedPackages)
import qualified Distribution.InstalledPackageInfo as IPI

tracePrettyId :: Show a => a -> a
tracePrettyId x = trace (T.unpack $ pShow x) x

-- | Converts from the solver specific result @CP QPN@ into
-- a 'ResolverPackage', which can then be converted into
-- the install plan.
convCP :: Show loc => SI.InstalledPackageIndex ->
          CI.PackageIndex (SourcePackage loc) ->
          CP QPN -> ResolverPackage loc
convCP iidx sidx (CP qpi fa es ds) =
  case convPI qpi of
    Left  pi ->
                (if (pkgName . IPI.sourcePackageId . fromJust $ SI.lookupUnitId iidx pi)
                    `elem` (map fst tracedPackages) then tracePrettyId else id) $
                PreExisting $
                  InstSolverPackage {
                    instSolverPkgIPI = fromJust $ SI.lookupUnitId iidx pi,
                    instSolverPkgLibDeps = fmap fst ds',
                    instSolverPkgExeDeps = fmap snd ds'
                  }
    Right pi -> Configured $
                  SolverPackage {
                      solverPkgSource = srcpkg,
                      solverPkgFlags = fa,
                      solverPkgStanzas = es,
                      solverPkgLibDeps = fmap fst ds',
                      solverPkgExeDeps = fmap snd ds'
                    }
      where
        srcpkg = fromMaybe (error "convCP: lookupPackageId failed") $ CI.lookupPackageId sidx pi
  where
    ds' :: ComponentDeps ([SolverId] {- lib -}, [SolverId] {- exe -})
    ds' = fmap (partitionEithers . map convConfId) ds

convPI :: PI QPN -> Either UnitId PackageId
convPI (PI _ (I _ (Inst pi))) = Left pi
--- XXX/srk: loosing subPis
convPI (PI _ (I _ (InstGroup pi _subPis))) = Left pi
convPI pi                     = Right (packageId (either id id (convConfId pi)))

convConfId :: PI QPN -> Either SolverId {- is lib -} SolverId {- is exe -}
convConfId (PI (Q (PackagePath _ q) pn) (I v loc)) =
    case loc of
        Inst pi -> Left (PreExistingId sourceId pi)
        --- XXX/srk: loosing subPis
        InstGroup pi _subPis -> Left (PreExistingId sourceId pi)
        InRepo
          | QualExe _ pn' <- q
          -- NB: the dependencies of the executable are also
          -- qualified.  So the way to tell if this is an executable
          -- dependency is to make sure the qualifier is pointing
          -- at the actual thing.  Fortunately for us, I was
          -- silly and didn't allow arbitrarily nested build-tools
          -- dependencies, so a shallow check works.
          , pn == pn' -> Right (PlannedId sourceId)
          | otherwise    -> Left  (PlannedId sourceId)
  where
    sourceId    = PackageIdentifier pn v
