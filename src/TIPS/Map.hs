module TIPS.Map where

import qualified Data.Map.Strict as M -- 
import Data.Tuple (swap)
import Data.IntMap.Internal.Debug (showTree)

fruits::[(String,Int)]
fruits = [("apple",1),("orange",2),("banana",3),("peach",4),("cherry",5),("orange",6),("apple",7),("peach",8)]
fruitsMap = M.fromList fruits
fruitsMapList = M.fromListWith (++) $ map (\(k,v) -> (k, [v])) fruits

keyValueList::(Ord k) =>[(k,a)]-> M.Map k [a]
keyValueList xs = M.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs

keySumValue::(Ord k) => [(k,Int)] -> M.Map k Int
keySumValue xs = M.fromListWith (+) xs

main = do
  print $ M.fromList fruits
  print $ M.fromAscList $ map swap fruits
  print $ M.fromDescList $ map swap fruits
  print $ M.fromListWith (++) $ map (\(k,v) -> (k, [v])) fruits
  print $ keySumValue fruits
  print $ M.insert "grape" 1 $ M.fromList fruits
  print $ M.insertWith (+) "orange" 10 $ M.fromList fruits
  print $ M.delete "orange" fruitsMap
  print $ M.update (\x -> Just (x+1)) "cherry" fruitsMap
  print $ M.update (\x -> Just (x+1)) "beef" fruitsMap
  print $ M.lookup "orange" fruitsMap
  print $ M.lookup "beef" fruitsMap
  print $ fruitsMap M.!? "orange"
  print $ fruitsMap M.! "orange"
--  print $ fruitsMap M.! "beef"
  print $ M.member "orange" fruitsMap
  print $ M.member "beef" fruitsMap
  print $ M.mapKeys ("F." ++ ) fruitsMap
  print $ M.map (+1) fruitsMap
  print $ M.foldl (+) 0 fruitsMap
  print $ M.foldlWithKey (\acc k v->acc ++ (k ++ "=" ++show v)) [] fruitsMap
  print $ M.elems (fruitsMap)
  print $ M.keys (fruitsMap)
  print $ M.toList (fruitsMap)
  print $ M.toAscList (fruitsMap)
  print $ M.toDescList (fruitsMap)
  print $ M.filter (> 5) (fruitsMap)
  print $ M.filterWithKey (\x _-> length x > 5) fruitsMap
  print $ M.lookupMin fruitsMap
  print $ M.lookupMax fruitsMap
  print $ M.findMin fruitsMap
  print $ M.findMax fruitsMap
  print $ M.size fruitsMap
  print $ M.findIndex "4" fruitsMap
  print $ M.lookupIndex "4" fruitsMap
  print $ M.elemAt