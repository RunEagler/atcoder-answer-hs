module ABC148.B where

main = do
  n <- getLine
  [s,t] <- words <$> getLine
  putStrLn $ concat $ (zipWith (\a b -> [a,b]) s t)