module ABC146.C where


digit::Int->Int
digit x = length $ show x

main = do
  [a,b,x] <- map read . words <$> getLine
  let ans = maximum $ map (\i -> let p=x-(b*i);q=div p a in if p <= 0 then 0 else min q (10^i-1)) [1..10]
  print $ if ans > 10^9 then 10^9 else ans
--  print $ if b >= x then 0 else let ans = maximum $ map (\p -> div p a) maxSubB in if ans > 10^9 then 10^9 else ans