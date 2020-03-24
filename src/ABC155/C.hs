module ABC155.C where

import Data.List (sort)

import Data.List (group)

import Control.Monad (replicateM)

main = do
  n <- readLn
  sn <- replicateM n getLine
  print $ group $ sort sn
  