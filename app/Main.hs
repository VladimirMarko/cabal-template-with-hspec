{-# LANGUAGE QuasiQuotes #-}

module Main (main) where

import Data.Foo
import Data.String.Interpolate (i)

main :: IO ()
main = do
    let foo = mkFoo0 "world"
    putStrLn [i|Hello, #{unFoo foo}!|]
