module ABC161.A where

main = do
  [x,y,z] <- words <$> getLine
  putStrLn $ unwords [z,x,y]