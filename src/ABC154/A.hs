

main = do
  [s,t] <- words <$> getLine
  [a,b] <- map read . words <$> getLine
  u <- getLine
  putStrLn $ unwords $ map show $ if s == u then [a-1,b] else [a,b-1]