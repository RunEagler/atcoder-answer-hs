module ABC130.C where

import Data.Function (on)

div'::Int->Int->Double
div' = (/) `on` fromIntegral

main = do
  [w,h,x,y] <- map read . words <$> getLine
  let s = div' (w*h) 2
  let isMulti = if even w && even h && (div w 2) == x && (div h 2) == y then "1" else "0"
  putStrLn $ show s ++ " " ++ isMulti