module ABC81.C where

import qualified Data.ByteString.Char8 as B
import qualified Data.Set as S
import qualified Data.Vector.Unboxed as VU
import Data.Maybe (fromJust)
import Data.List (sort, group, sortBy)
import Data.Ord (comparing)

getInts :: IO [Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  [n,k] <- getInts
  an <- getInts
  let groupBalls = sortBy (comparing snd) $ map (\x -> (head x,length x)) . group $ sort an
  print $ let kind = length groupBalls in if kind > k then sum . map snd $ take (kind-k) groupBalls else 0