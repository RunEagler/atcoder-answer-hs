
clash::Int->[Int]->Int
clash n (x:xs) | null xs = if n == x then 0 else 1
               | n == x = clash (n+1) xs
               | otherwise = 1 + clash n xs

main = do
  getLine
  an <- map read . words <$> getLine
  print $ if all (/=1) an then -1 else clash 1 an


