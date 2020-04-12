module ABC162.A where

import Data.List
main = do
  n <- getLine
  putStrLn $ if isInfixOf "7" n then "Yes" else "No"