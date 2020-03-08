module ABC158.C where


answer::Int->Int->Int->Int
answer i a b | p1 > a || p2 > b = -1
             | p1 == a && p2 == b = i
             | otherwise = answer (i+1) a b
              where p1 = floor $ fromIntegral i * 0.08
                    p2 = floor $ fromIntegral i * 0.10

main = do
  [a,b] <- map read . words <$> getLine
  print $ answer 1 a b