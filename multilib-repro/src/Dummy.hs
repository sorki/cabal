module Dummy where

import Control.Monad.Class.MonadSay
import Control.Monad.Class.MonadTime.SI

main :: IO ()
main = do
  say "Hello installed multilibs"
  getCurrentTime >>= say . show
