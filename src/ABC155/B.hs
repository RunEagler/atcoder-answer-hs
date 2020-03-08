module ABC155.B where

main = do
  getLine
  an <- map read . words <$> getLine
  putStrLn $ if all (\y -> y `mod` 3 == 0 || y `mod` 5 == 0) [x | x <- an, even x] then "APPROVED" else "DENIED"