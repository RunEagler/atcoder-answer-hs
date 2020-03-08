module ABC124.B where

main = do
  getLine
  hn <- map read . words <$> getLine::IO[Int]
  print $ length . filter id $ zipWith (==) (scanl1 max hn) hn