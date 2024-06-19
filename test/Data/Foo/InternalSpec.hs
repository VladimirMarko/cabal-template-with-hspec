module Data.Foo.InternalSpec where

import Test.Hspec
import Data.Foo.Internal

spec :: Spec
spec = describe "Data.Foo.Internal.unFoo" $ do
  it "is the inverse of MkFoo" $ do
    unFoo (MkFoo "abc") `shouldBe` "abc"

