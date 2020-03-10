module ABC136.C where

main = do
  getLine
  hn <- map read . words <$> getLine::IO[Int]
  let work = zipWith (min) hn $ tail hn
  putStrLn $ if and $ zipWith (<=) work $ tail work then "Yes" else "No"