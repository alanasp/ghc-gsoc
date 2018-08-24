module ExportDeprecation006_B(
  {-# DEPRECATED "func2 export is deprecated" #-}
  func2,
  {-# DEPRECATED "ExportDeprecation006_C shall be imported directly" #-}
  module ExportDeprecation006_C
) where

import ExportDeprecation006_C


func2 :: Int
func2 = 42
