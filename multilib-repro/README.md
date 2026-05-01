* Depend on `io-classes` and `io-classes:si-timers`
* Use old `index-state` so cabal is unaware of `InRepo io-classes`
* Provide all deps via `nix-shell` instead

* `nix-build` works, `nix-shell -> cabal freeze` sad

* Without nix, cabal freeze and build works fine when the old index-state is dropped 
  (also when index-state pin is dropped, `cabal build` in `nix-shell` picks io-classes from repository
  instead of installed version and works fine)
