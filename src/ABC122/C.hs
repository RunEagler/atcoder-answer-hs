module ABC122.C where

import Data.List (transpose)
import Control.Monad (replicateM)

getInts::IO[Int]
getInts = getLine >>= mapM readIO . words

slice::String->Int->Int->String
slice s from to = take (to- from + 1) $ drop (from-1) s

toChar::String->[[Char]]
toChar xs = map (:[]) xs

main = do
  [n, q] <- map read .words <$> getLine
  s <- getLine
  [ln,rn] <- transpose <$> replicateM q getInts
  let series = scanl (\acc (a,b) -> if (a,b)==("A","C") then acc + 1 else acc) 0 $ zip (toChar s) (toChar $ tail s)
  mapM_ print $ zipWith (\a b -> (series !! (b-1)) - (series !! (a-1))) ln rn


