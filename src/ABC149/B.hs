module ABC149.B where

main = do
  [a,b,k] <- map read . words <$>getLine
  let c = (a - k)
  putStrLn $ unwords $ map show $ if c < 0 then if b + c > 0 then [0,b+c] else [0,0] else [c,b]