{-# LANGUAGE FlexibleInstances #-}

module Main where

class Foo a where
  foo :: a -> Int

instance Foo Int where
  foo x = x

instance Foo [a] where
  foo xs = length xs

data MyData = MyData

instance Foo MyData where
  foo _ = 0

main :: IO ()
main = do
  print (foo 5)
  print (foo [1,2,3])
  print (foo (MyData))
  print (foo ("abc" :: [Char])) -- Added type annotation to resolve the error