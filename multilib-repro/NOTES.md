# Solver log

* `showI` `InstGroup` not quite right

```
[__0] trying: multilib-repro-0.1.0.0 (user goal)
[__1] trying: base-4.19.2.0/installed-c961 (dependency of multilib-repro)
[__2] trying: rts-1.0.2/installed-1.0.2 (dependency of base)
[__3] trying: ghc-prim-0.11.0/installed-125c (dependency of base)
[__4] trying: ghc-bignum-1.3/installed-318a (dependency of base)
[__5] trying: io-classes-1.8.0.1/installed-33ddkjXAD1KJwOJZifrTm7 installed package group (si-timers BaGdHXs1lp9FQhMCW
RHZf6-testlib strict-stm HNLiI1gu2giD5Kw4y1THp7-mtl strict-mvar) (dependency of multilib-repro)
[__6] trying: QuickCheck-2.14.3/installed-K2lZjjZUIWxBJtwhV1t22T (dependency of io-classes)
[__7] trying: transformers-0.6.1.0/installed-e2c1 (dependency of QuickCheck)
[__8] trying: template-haskell-2.21.0.0/installed-1ae8 (dependency of QuickCheck)
[__9] trying: pretty-1.1.3.6/installed-ee32 (dependency of template-haskell)
[_10] trying: ghc-boot-th-9.8.4/installed-43d1 (dependency of template-haskell)
[_11] trying: splitmix-0.1.3.1/installed-IIjDWJi6KGW8SPCMq20Ixf (dependency of QuickCheck)
[_12] trying: random-1.2.1.3/installed-JzJ7wDZJvyKEZwhyy84vCj (dependency of QuickCheck)
[_13] trying: containers-0.6.8/installed-eec1 (dependency of QuickCheck)
[_14] trying: nothunks-0.3.0.0/installed-4LGihvW8hvh265YBwH3hAq (dependency of io-classes)
[_15] trying: wherefrom-compat-0.1.1.1/installed-1Y9olaizTnQK3JOH82VYF5 (dependency of nothunks)
[_16] trying: vector-0.13.2.0/installed-IXeaidFIanjD8op1Wd70Ty installed package group (benchmarks-O2) (dependency of 
nothunks)
[_17] trying: tasty-1.5.3/installed-GHKbCdKDpD39vyCXOyTTVw (dependency of vector)
[_18] trying: unix-2.8.6.0/installed-d15a (dependency of tasty)
[_19] trying: filepath-1.4.301.0/installed-1b67 (dependency of unix)
[_20] trying: exceptions-0.10.7/installed-c462 (dependency of filepath)
[_21] trying: tagged-0.8.8/installed-2cCfEyFK2pRKUL3nPpC3Ih (dependency of tasty)
[_22] trying: optparse-applicative-0.18.1.0/installed-LwkDTg03fuvHn0xCu0kSfX (dependency of tasty)
[_23] trying: transformers-compat-0.7.2/installed-6G9OlnQDBvW3fVpjTveUO5 (dependency of optparse-applicative)
[_24] trying: process-1.6.25.0/installed-9a2a (dependency of optparse-applicative)
[_25] trying: directory-1.3.8.5/installed-cc2a (dependency of process)
[_26] trying: prettyprinter-ansi-terminal-1.1.3/installed-4hnjoCWUaWCIkGZoJK81Wa (dependency of optparse-applicative)
[_27] trying: prettyprinter-1.7.1/installed-8QrsaOXtjcaLeIERAlHZAu (dependency of optparse-applicative)
[_28] trying: ansi-terminal-1.1.2/installed-ETQUZoCWvqT8AEKemStRJs (dependency of tasty)
[_29] trying: colour-2.3.6/installed-53XgynH5Tos3nk61JhCcOZ (dependency of ansi-terminal)
[_30] trying: ansi-terminal-types-1.1/installed-LKvbJTPiixMIGQtl5mLQ1F (dependency of ansi-terminal)
[_31] trying: vector-stream-0.1.0.1/installed-JCldOqGLrXQ73LXdywdbiD (dependency of vector)
[_32] trying: text-2.1.1/installed-64c0 (dependency of nothunks)
[_33] trying: binary-0.8.9.1/installed-9f17 (dependency of text)
[_34] trying: ghc-heap-9.8.4/installed-817a (dependency of nothunks)
[_35] trying: deepseq-1.5.1.0/installed-6ed2 (dependency of io-classes)
[_36] trying: time-1.12.2/installed-451a (dependency of io-classes)
[_37] trying: stm-2.5.3.1/installed-0e48 (dependency of io-classes)
[_38] trying: primitive-0.9.1.0/installed-EpKnaOTCHXAKNCQ5FAlO9y (dependency of io-classes)
[_39] trying: mtl-2.3.1/installed-f1b6 (dependency of io-classes)
[_40] trying: bytestring-0.12.1.0/installed-4348 (dependency of io-classes)
[_41] trying: async-2.2.5/installed-JceI2G2dPgy61dJkVVPh7r (dependency of io-classes)
[_42] trying: hashable-1.4.7.0/installed-ALMAcw9203880nd9Yp6KTa (dependency of async)
[_43] trying: os-string-2.0.7/installed-41gF27ug8WGAXOLWlTYWTv (dependency of hashable)
[_44] trying: array-0.5.8.0/installed-2e3c (dependency of io-classes)
[_45] trying: cassava-0.5.4.0/installed-3i4AuCN7HJb7FUBTwDBFx5 (dependency of multilib-repro)
[_46] trying: unordered-containers-0.2.20/installed-5G4IQE6clZ01aYsgcwIZPz (dependency of cassava)
[_47] trying: text-short-0.1.6/installed-QsCtZLoDfQCEGoVqC2eai (dependency of cassava)
[_48] trying: scientific-0.3.8.0/installed-6MdXO5dwql96gezs5RmYWI (dependency of cassava)
[_49] trying: integer-logarithms-1.0.4/installed-GhllmMX6iXeWdy2UpT4xw (dependency of scientific)
[_50] trying: Only-0.1/installed-GTxZVOBbOrtFLFp0rmrBYe (dependency of cassava)
[_51] next goal: attoparsec (dependency of multilib-repro)
[_51] trying: attoparsec-0.14.4/installed-3OIDNSUWze2AVr1XW1152M installed package group (attoparsec-internal)
[_52] done
```

# Current struggle

commit 87d6cfaee6239ed0743b27aca71514651378d061
Author: sorki <srk@48.io>
Date:   Fri May 1 12:31:21 2026 +0200

    xxx: trace the current blow up in

    Distribution.Backpack.ConfiguredComponent.toConfiguredComponent

    ```
    fromList [(CLibName LMainLibName,AnnotatedId {ann_pid = PackageIdentifier {pkgName = PackageName "attoparsec", pkgVersion = mkVersion [0,14,4]}, ann_cname = CLibName LMainLibName, ann_id = ComponentId "attoparsec-0.14.4-3OIDNSUWze2AVr1XW1152M"})]
    fromList [(CLibName LMainLibName,AnnotatedId {ann_pid = PackageIdentifier {pkgName = PackageName "base", pkgVersion = mkVersion [4,19,2,0]}, ann_cname = CLibName LMainLibName, ann_id = ComponentId "base-4.19.2.0-c961"})]
    fromList [(CLibName LMainLibName,AnnotatedId {ann_pid = PackageIdentifier {pkgName = PackageName "cassava", pkgVersion = mkVersion [0,5,4,0]}, ann_cname = CLibName LMainLibName, ann_id = ComponentId "cassava-0.5.4.0-3i4AuCN7HJb7FUBTwDBFx5"})]
    fromList [(CLibName LMainLibName,AnnotatedId {ann_pid = PackageIdentifier {pkgName = PackageName "io-classes", pkgVersion = mkVersion [1,8,0,1]}, ann_cname = CLibName LMainLibName, ann_id = ComponentId "io-classes-1.8.0.1-33ddkjXAD1KJwOJZifrTm7"})]

    Error:
        Dependency on unbuildable library 'si-timers' from io-classes
        In the stanza 'library'
        In the inplace package 'multilib-repro-0.1.0.0'
    ```

called by `Distribution.Client.ProjectPlanning`
  `elaborateSolverToComponents` -> `buildComponent` -> `Distribution.Backpack.ConfiguredComponent.toConfiguredComponent`

with `external_lib_cc_map` produced using `mkCCMapping` which adds a singleton with `ipiComponentName` (same module)

```
-- | Get the appropriate 'ComponentName' which identifies an installed
-- component.
ipiComponentName :: IPI.InstalledPackageInfo -> ComponentName
ipiComponentName = CLibName . IPI.sourceLibName
```

`mkCCMapping` has `TODO: libify` comming from `commit f4ded04f684a4b0ab7af745bfb98cef356af01a9` with pretty cool message
but not clear what the TODO means.

Now the trouble is that `InstSolverPackage` built in `Distribution.Solver.Modular.ConfiguredConversion.convCP` has
only main package IPI (`InstalledPackageInfo`) and no knowledge of sub-library IPIs, BUT the sub-libraries
propagate via `instSolverPkgLibDeps` so maybe this can be done. Now mkCCMapping gets `ElaboratedPlanPackage`
(via `external_lib_dep_pkgs`
  - `external_lib_dep_sids = CD.select (== compSolverName) deps0`
  - `external_lib_dep_pkgs = concatMap mapDep external_lib_dep_sids`
)

so mapDep nukes it somewhere
* `elaborateSolverToComponents (SolverId -> [ElaboratedPlanPackage])`
* `elaborateSolverToComponents mapDep`

here ..

```
elaboratedInstallPlan
        :: LogProgress (InstallPlan.GenericInstallPlan IPI.InstalledPackageInfo ElaboratedConfiguredPackage)
flip InstallPlan.fromSolverInstallPlanWithProgress solverPlan $ \mapDep planpkg ->
    case planpkg of
      SolverInstallPlan.PreExisting pkg ->
        return [InstallPlan.PreExisting (instSolverPkgIPI pkg)]
```


```
type ElaboratedPlanPackage =
   GenericPlanPackage
     InstalledPackageInfo
     ElaboratedConfiguredPackage
```
so ElaboratedInstalledPackage? (reverted, bit too intrusive)
or add it to InstalledPackageInfo?? +


Now the problem is that we loose the `UnitId`s in `ConfiguredConversion` so `InstSolverPackage` needs to be extended as well

<couple hours and a beer later>

```
linkComponent: lookupUid
CallStack (from HasCallStack):
  error, called at src/Distribution/Backpack/LinkedComponent.hs:164:30 in Cabal-3.17.0.0-inplace:Distribution.Backpack.LinkedComponent

lookupUid :: ComponentId -> (OpenUnitId, ModuleShape)

lookupUid (ComponentId "io-classes-1.8.0.1-AyfpIG2irg8KU0CSRSiYmS-si-timers")

type LinkedComponentMap = Map ComponentId (OpenUnitId, ModuleShape)
external_lc_map =
  Map.fromList $
    map mkShapeMapping $
```

`mkShapeMapping` needs full `InstalledPackageInfo` to access exposed modules
in `shapeInstalledPackage`

now have
`installedSublibs :: Map UnqualComponentName ComponentId`
so we need
`installedSublibs :: Map UnqualComponentName InstalledPackageInfo`
to tie the knot aww

* We get `ComponentId` from IPI tad later in mkCCMapping
  and no need for (Map UnqualComponentName) either it seems
  sourceLibName = LSubLibName (UnqualComponentName "attoparsec-internal")
  (ye sourceComponentName = CLibName . sourceLibName)

afterwards we need something like

```
InstallPlan.foldPlanPackage
  (IPI.installedSublibs)
  (const [])
```
reshape and feed each into `mkShapeMapping` again?
- Would require wrapping into `ElaboratedPlanPackage` that would fold again
- mimic `mkShapeMapping` (call `shapeInstalledPackage`) instead

sleep on it.

* expand in more `ProjectPlanning` places
* renders `mkCCMapping`/`mkShapeMapping` expansion not necessary
* `elaboratedInstallPlan` expansion is key
* simply `installedSublibs :: [InstalledPackageInfo]`

it works! 😹 😹 😹

TODO
* DONE cleanup tracing
* DONE cleanup expansion (also expands `preexistingInstantiatedPkgs` which seems needed, but not sure how to test, needs backpack)
* DONE remove ipiComponentName from `ProjectPlanning`
* DONE better `showI`
  ```
  [__4] trying: ghc-bignum-1.3/installed-318a (dependency of base)
  [__5] trying: io-classes-1.8.0.1/installed-33ddkjXAD1KJwOJZifrTm7 installed package group [AyfpIG2irg8KU0CSRSiYmS-si-timers BaGdHXs1lp9FQhMCWRHZf6-testlib D0v8ulLSaiMH02MEoq5IMb-strict-stm HNLiI1gu2giD5Kw4y1THp7-mtl IAV7RzZprx53hJRtjqIXp5-strict-mvar] (dependency of multilib-repro)
  [__6] trying: QuickCheck-2.14.3/installed-K2lZjjZUIWxBJtwhV1t22T (dependency of io-classes)
  ```
* DONE axe munging
