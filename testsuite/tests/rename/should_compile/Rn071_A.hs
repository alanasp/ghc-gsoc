module Rn071_A(
  func1,
  {-# DEPRECATED "module Rn071_B reexport is deprecated" #-}
  module Rn071_B
) where

import Rn071_B

data T = C | D

func1 :: Int
func1 = 42
