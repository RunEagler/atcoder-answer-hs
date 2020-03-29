module ARC.ARC47.A where

main = do
  [n,l] <- map read . words <$> getLine
  log <- getLine
  print $ snd $ foldl (\(tabCount,ans) x -> if x == '+' then (if (tabCount+1) > l then (1,ans+1) else (tabCount+1,ans)) else (tabCount-1,ans)) (1,0) log