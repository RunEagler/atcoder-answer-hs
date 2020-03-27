module ARC.ARC57.A where

solve::Int->Int->Int
solve a k | currentMoney >= goalMoney = 1
          | k == 0 = goalMoney - a
          | otherwise = 1 + solve currentMoney k
            where
              goalMoney = 2 * 10^12
              currentMoney = a + (1+k*a)

main = do
  [a,k] <- map read . words <$> getLine
  print $ solve a k