module ABC156.C where

main = do
  n <- readLn
  xn <- map read . words <$> getLine::IO[Int]
  let avg = round $  (fromIntegral (sum (xn)) / fromIntegral n)
  print $ sum [(x - avg) ^ 2 | x <- xn]