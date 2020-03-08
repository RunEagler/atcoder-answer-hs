module ABC132.A where

import Data.List (sort, group)
main = do
  line <- sort <$> getLine
  putStrLn $ if all ( == 2) (map length $ group line) then "Yes" else "No"
  