module ABC73.C where

import qualified Data.ByteString.Char8 as B
import Control.Monad (replicateM)
import qualified Data.Set as S
import qualified Data.Vector.Unboxed as VU
import Data.Maybe (fromJust)

solve::VU.Vector Int -> Int
solve an = S.size $ VU.foldl (\acc x -> if S.member x acc then S.delete x acc else S.insert x acc) S.empty an

main = do
  n <- readLn
  an <- VU.replicateM n  (fst . fromJust . B.readInt <$> B.getLine)
  print $ solve an