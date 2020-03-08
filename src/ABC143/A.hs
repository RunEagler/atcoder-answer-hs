module ABC143.A where

main = do
  [a,b] <- map read . words <$> getLine
  print $ let result = a - b*2 in if result <= 0 then 0 else result