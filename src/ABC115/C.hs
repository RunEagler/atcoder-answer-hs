module ABC115.C where

import Control.Monad
import Data.List (sortBy)

solve::Int->[Int]->Int
solve k hn = minimum $ zipWith (-) (drop (k-1) sortTree) sortTree
              where sortTree = sortBy compare hn

main = do
  [n, k] <- map read . words <$> getLine
  hn <- replicateM n $ read <$> getLine::IO[Int]
  print $ solve k hn