module ExportDeprecation005_B(
  {-# DEPRECATED "func2 export is deprecated" #-}
  func2,
  {-# DEPRECATED "ExportDeprecation005_C shall be imported directly" #-}
  module ExportDeprecation005_C
) where

import ExportDeprecation005_C


func2 :: Int
func2 = 42
