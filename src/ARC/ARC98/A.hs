module ARC98.A where

import qualified Data.Map.Strict as M
import Data.List (group)

main = do
  getLine
  s <- getLine::IO[Char]
  let cumulative = scanl (\(w,e) v -> if v == 'W' then (w+1,e) else (w,e+1)) (0,0) s
  let vectorAll = last cumulative
  print $ minimum $ zipWith (\v (w,e) -> let result = w + (snd vectorAll - e) in if v == 'W' then result else  result - 1) s cumulative