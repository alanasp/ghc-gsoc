module Rn073_A(
  func1,
  T(C),
  {-# DEPRECATED "Rn073_C shall be imported directly" #-}
  module Rn073_C
) where

import Rn073_C

data T = C | D

func1 :: Int
func1 = 42
