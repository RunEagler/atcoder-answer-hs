module ABC159.D where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import Data.List (sort, group)
import qualified Data.Map.Strict as M

combination::Int->Int
combination count | count < 2 = 0
                  | otherwise = div (count*(count-1)) 2

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  getLine
  an <- getInts
  let valueFreq = M.fromList $ map (\x -> (head x,length x)) $ group $ sort an
  let overall = M.foldl (\acc cnt -> acc + combination cnt) 0 valueFreq
  mapM_ print $ map (\x -> overall - ((fromJust $ M.lookup x valueFreq)-1)) an
