module Main where

import qualified MyLib (activate)
import IO

main :: IO ()
main = do
  initial-val <- hGetLn stdin
  putStrLn activate initial-val
