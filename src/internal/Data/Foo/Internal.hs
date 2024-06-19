{-# LANGUAGE DerivingStrategies #-}

module Data.Foo.Internal (Foo (MkFoo, unFoo)) where

newtype Foo = MkFoo { unFoo :: String }
  deriving newtype Monoid
  deriving newtype Semigroup
  deriving newtype Read
  deriving newtype Ord
  deriving newtype Show
  deriving newtype Eq
