module ABC87.C where

import qualified Data.ByteString.Char8 as B
import qualified Data.Vector.Unboxed as VU
import Data.Maybe (fromJust)

getInts::IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine

main = do
  n <- readLn
  a1n <- getInts
  a2n <- getInts
  let a1nv = VU.fromList a1n
      a2nv = VU.fromList a2n
  print $ VU.maximum . VU.map (\x -> VU.sum (VU.take x a1nv) + VU.sum (VU.drop (x-1) a2nv)) $ VU.fromList [1..n]
