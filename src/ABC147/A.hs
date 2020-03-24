module ABC147.A where

main = do
  [a1,a2,a3] <- map read . words <$> getLine
  putStrLn $ if sum [a1,a2,a3] > 21 then "bust" else "win"
