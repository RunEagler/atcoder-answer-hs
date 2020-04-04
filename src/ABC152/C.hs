module ABC152.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.Vector.Unboxed as VU

getInts :: IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  getLine
  pn <- VU.fromList <$> getInts
  let mn = VU.scanl1 min pn
  print $ VU.length . VU.filter id $ VU.zipWith (==) pn mn