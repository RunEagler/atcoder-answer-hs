module ABC149.A where

main = do
  [s,t] <- words <$> getLine
  putStrLn $ t ++ s