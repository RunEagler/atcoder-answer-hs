module ABC153.B where

import Data.List (sort)
main = do
  [h, _] <- map read .words <$> getLine
  an <- map read . words <$> getLine
  putStrLn $ if h <= sum an then "Yes" else "No"