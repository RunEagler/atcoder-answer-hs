module TIPS.Vector where

import qualified Data.Vector.Unboxed as VU
import qualified Data.Vector as V


-- リストを連続するK個の部分リストに区切った時の先頭と末尾の組み合わせを取得する
headLast::Int->V.Vector a->V.Vector (a,a)
headLast k xn = V.zip xn (V.drop(k-1) xn)


main = do
  print $ VU.generate (10*10) id
  print $ VU.filter even $ VU.generate 100 id
  print $ V.fromList [1,2,3]
  print $ V.generate 100 id