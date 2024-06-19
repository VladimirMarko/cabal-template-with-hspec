module Data.Foo (unFoo, mkFoo, mkFoo0, mkFoo1) where
import Data.Foo.Internal

mkFoo :: String -> Maybe Foo
mkFoo s | s == reverse s = Just (MkFoo s)
        | otherwise = Nothing

mkFoo0 :: String -> Foo
mkFoo0 s = MkFoo (s ++ reverse s)

mkFoo1 :: String -> Char -> Foo
mkFoo1 s c = MkFoo (s ++ c : reverse s)
