module ABC120.C where

main = do
  s <- getLine
  let (a,b) = foldl (\(a,b) ss -> if ss == '1' then (a+1,b)else(a,b+1)) (0,0) s
  print $ length s - abs (a - b) 