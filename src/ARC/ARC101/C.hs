module ARC.ARC101.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.Vector.Unboxed as VU

getInts :: IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  [n,k] <- map read . words <$> getLine
  xn <- VU.fromList <$> getInts
  print $ VU.zip xn (VU.drop(k-1) xn)
  print $ foldl (\acc i -> let (l,r) = (xn VU.! i,xn VU.! (i+k-1)) in minimum [acc , abs (l)+(r-l),abs(r) + (r-l)]) 9999999999 [0..n-k]
