module ABC142.C where

import Data.List (sortBy, sortOn, intercalate)
main = do
  n <- getLine
  an <- map read . words <$> getLine::IO[Int]
  putStrLn $ intercalate " " $ map show $ map (fst) $ sortOn snd $ zip [1..] an