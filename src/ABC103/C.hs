module ABC103.C where

main = do
  getLine
  an <- map read . words <$> getLine::IO[Int]
  let m = maximum an
  print $ [ sum $ map (\x -> p `mod` x) an | p <- [m..(2*m-1)]]