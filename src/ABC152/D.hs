module ABC152.D where

import qualified Data.Map as M
import Data.Maybe (fromJust)
import Data.Char (intToDigit)

pair::[Char]->(Char,Char)
pair x = (head x,last x)

solve::Int->Int->M.Map (Char,Char) Int->Int
solve i j m = case M.lookup (intToDigit i,intToDigit j) m of
              Just x -> x
              Nothing -> 0

main = do
  n <- readLn
  let hash = M.fromListWith (+) $ map (\x -> (pair x,1)) $ map show [1..n]
  print $ sum [(solve i j hash)*(solve j i hash) | i <- [1..9], j <- [1..9]]