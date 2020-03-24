module ABC159.A where

combination::Int->Int
combination count | count < 2 = 0
                  | otherwise = div (count*(count-1)) 2

main = do
  [n,m] <- map read . words <$> getLine
  print $ combination n + combination m