module ABC140.C where

main = do
  getLine
  bn <- map read . words <$> getLine::IO[Int]
  print $ (head bn) + (last bn) + (sum <$> zipWith min bn $ tail bn)
