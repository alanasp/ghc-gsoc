{-# OPTIONS_GHC -fwarn-warnings-deprecations #-}

-- Test deprecation of variable and data constructor exports

module ShouldCompile where

import Rn074_B(funcRn074_C) --non-deprecated
import Rn074_C(funcRn074_C) --deprecated at definition
import Rn074_A(funcRn074_C) --non-deprecated

main = funcRn074_C --warning because deprecated at the defining module
