module ABC139.C where

import Data.List (group)

main = do
  getLine
  hn <- map read . words <$> getLine::IO[Int]
  print $ maximum $ (0:) $ map length $ filter head $ group $ zipWith (>=) hn (tail hn)