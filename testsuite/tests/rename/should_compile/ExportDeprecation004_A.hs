module ExportDeprecation004_A(
  func1,
  module ExportDeprecation004_B
) where

import ExportDeprecation004_B

data T = C | D

func1 :: Int
func1 = 42
