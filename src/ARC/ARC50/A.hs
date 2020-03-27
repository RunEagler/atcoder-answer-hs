module ARC.ARC50.A where

import Data.Char
main = do
  [c, c'] <- map head . words <$> getLine
  putStrLn $ if toLower c == c' then "Yes" else "No"