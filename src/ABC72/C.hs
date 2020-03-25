module ABC72.C where

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)
import qualified Data.Map.Strict as M
import qualified Data.Vector.Unboxed as VU

getInts :: IO[Int]
getInts = map (fst . fromJust . B.readInt) . B.words <$> B.getLine


lambda::M.Map Int Int->Int->M.Map Int Int
lambda acc v = foldl (\acc x -> if M.member x acc then M.adjust (+1) x acc else M.insert x 1 acc) acc [v-1,v,v+1]

main = do
  n <- getLine
  an <- getInts
  print $ maximum $ M.elems . VU.foldl lambda M.empty $ VU.fromList an


