module ABC141.B where

main = do
  s <- getLine
  putStrLn $ if any (uncurry (==)) $ zip s (cycle "LR") then "No" else "Yes"