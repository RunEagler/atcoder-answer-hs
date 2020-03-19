module ABC117.C where

import Data.List (sortBy)

sortAsc::[Int]->[Int]
sortAsc = sortBy compare

sortDesc::[Int]->[Int]
sortDesc = sortBy $ flip compare

main = do
  [n,m] <- map read . words <$> getLine::IO[Int]
  xn <- map read . words <$> getLine::IO[Int]
  let sortPoints = sortAsc xn
  let overallWidth = last sortPoints - head sortPoints
  let diff = sortDesc . map abs $ zipWith (-) sortPoints $ tail sortPoints
  let result = overallWidth - (sum $ take (n-1) diff)
  print $ result