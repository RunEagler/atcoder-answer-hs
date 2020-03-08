module ABC121.B where

import Control.Monad (replicateM)
main = do
  [n,m,c] <- map read . words <$> getLine
  bn <- map read .words <$> getLine
  anm <- replicateM n $ map read . words <$> getLine::IO[[Int]]
  print $ length $ filter (>0) [foldl (\acc (a, b) -> acc + a * b) c $ zip am bn |am <- anm]