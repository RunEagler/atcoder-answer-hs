module ABC129.B where

main = do
  n <- readLn
  wn <- map read . words <$> getLine::IO[Int]
  print $ minimum $ map (\(a,b) -> abs $ sum a - sum b) [splitAt i wn| i <- [1..n-1]]