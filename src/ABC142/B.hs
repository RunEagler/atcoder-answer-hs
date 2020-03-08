module ABC142.B where

main = do
  [n,k] <- map read . words <$> getLine::IO[Int]
  hn <- map read . words <$> getLine::IO[Int]
  print $ length $ filter (>= k) hn