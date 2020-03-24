module Panasonic2020.C where

main = do
  [a,b,c] <- map read . words <$> getLine::IO[Int]
  let ab = 4 * a * b
  let d = c - a - b
  putStrLn $ if d > 0 && ab < d^2 then "Yes" else "No"