module ABC158.A where

import Data.List (group)
main = do
  s <- getLine
  putStrLn $ if length (group s) == 1 then "No" else "Yes"