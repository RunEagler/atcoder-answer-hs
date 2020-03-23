module ARC87.A where

import qualified Data.Map.Strict as M
import Data.List (sort, group)

main = do
  getLine
  an <- map read . words <$> getLine::IO[Int]
  let valueFreq = map (\x -> (head x,length x)) $ group $ sort an
  print $ foldl (\acc (a, b)-> if a > b then acc + b else acc + (b-a)) 0 valueFreq
--  print $ M.foldl (\acc p -> M.update (\freq -> Just(freq + 1)) p acc) M.empty anMap
