module TIPS.Vector where

import qualified Data.Vector.Unboxed as VU
import qualified Data.Vector as V


main = do
  print $ VU.generate (10*10) id
  print $ VU.filter even $ VU.generate 100 id
  print $ V.fromList [1,2,3]
  print $ V.generate 100 id