module ABC159.C where

import Data.Function (on)

div' = (/) `on` fromIntegral

main = do
  l <- readLn
  print $ (div' l 3)^3