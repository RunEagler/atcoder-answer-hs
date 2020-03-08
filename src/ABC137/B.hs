module ABC137.B where

main = do
  [k,x] <- map read . words <$> getLine
  putStrLn $ unwords $ map show [(x-k+1)..(x+k-1)]