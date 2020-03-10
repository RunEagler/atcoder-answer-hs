module ABC154.C where

import Data.List
import qualified Data.Set as Set
 
main = do
  n <- readLn
  an <- map read . words <$> getLine::IO[Int]
  putStrLn $ if n == length (nub an) then "Yes" else "No"