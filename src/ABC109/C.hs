module ABC109.C where

main = do
  [n,x] <- map read. words <$> getLine::IO[Int]
  xn <- map read . words <$> getLine::IO[Int]
  print $ abs $ foldl1 gcd $ map (abs.subtract x) xn