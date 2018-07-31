{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import Rn076_A
import Rn076_B

-- funcRn076_C is deprecated at the defining module
-- and module Rn076_B but not Rn076_A, so we expect
-- only one warning

main = Rn076_B.funcRn076_C

main2 = funcRn076_C
