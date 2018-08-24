module ExportDeprecation006_A(
  func1,
  T(C),
  {-# DEPRECATED "ExportDeprecation006_C shall be imported directly" #-}
  module ExportDeprecation006_C
) where

import ExportDeprecation006_C

data T = C | D

func1 :: Int
func1 = 42
