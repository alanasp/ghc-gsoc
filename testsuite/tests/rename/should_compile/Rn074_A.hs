module Rn074_A(
  func1,
  T(C),
  {-# DEPRECATED "Rn073_C shall be imported directly" #-}
  module Rn074_C
) where

import Rn074_C

data T = C | D

func1 :: Int
func1 = 42
