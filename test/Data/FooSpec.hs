module Data.FooSpec where

import Test.Hspec
import Data.Foo
import Data.Foo.Internal

spec :: Spec
spec = describe "Data.Foo.mkFoo" $ do
  it "rejects non-palindromes" $ do
    mkFoo "ab" `shouldBe` Nothing
  it "accepts palindromes" $ do
    mkFoo "aba" `shouldBe` Just (MkFoo "aba")
