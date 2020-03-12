module ABC110.C where

import Data.List (nub)
import Data.Maybe (mapMaybe)
import Data.Function (on)

toChar::String->[[Char]]
toChar xs = map (:[]) xs


normalize :: Eq a => [a] -> [Int]
normalize xs = mapMaybe (flip lookup table) xs
  where
    table = zip (nub xs) [0..]

isSamePattern::String -> String -> Bool
isSamePattern = (==) `on` normalize

main = do
  s <- getLine
  t <- getLine
  putStrLn $ if isSamePattern s t then "Yes" else "No"