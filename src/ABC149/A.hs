
main = do
  [s,t] <- words <$> getLine
  putStrLn $ t ++ s