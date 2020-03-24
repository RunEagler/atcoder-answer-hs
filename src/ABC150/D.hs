module ABC150.D where

import Data.Function (on)

allLcm::[Int]->Int
allLcm an = foldl lcm 1 an

oddCount::Int->Int
oddCount n = div (n+1) 2

main = do
  [n, m] <- map read . words <$> getLine
  an <- map read . words <$> getLine
  let l = allLcm $ map (`div` 2) an
  print $ if l > m then 0 else oddCount (div m l)
