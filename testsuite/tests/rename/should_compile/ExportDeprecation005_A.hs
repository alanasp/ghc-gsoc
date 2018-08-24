module ExportDeprecation005_A(
  func1,
  T(C),
  {-# DEPRECATED "ExportDeprecation005_C shall be imported directly" #-}
  module ExportDeprecation005_C
) where

import ExportDeprecation005_C

data T = C | D

func1 :: Int
func1 = 42
