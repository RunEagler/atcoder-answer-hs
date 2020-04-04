module ABC161.B where

import Data.List (sortBy)
import Data.Function (on)

div'::Int->Int->Double
div' = (/) `on` fromIntegral

sortDesc::[Int]->[Int]
sortDesc = sortBy $ flip compare

main = do
  [n,m] <- map read . words <$> getLine
  an <- map read . words <$> getLine
  let bn = sortDesc an
  let threshold = div' (sum an) (4*m)
  putStrLn $ if all (\p -> threshold <= fromIntegral(p)) (take m bn) then "Yes" else "No"