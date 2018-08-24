module ExportDeprecation003_A(
  func1,
  {-# DEPRECATED "module ExportDeprecation003_B reexport is deprecated" #-}
  module ExportDeprecation003_B
) where

import ExportDeprecation003_B

data T = C | D

func1 :: Int
func1 = 42
