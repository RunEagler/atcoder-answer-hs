module ABC146.B where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

nextN::Int->Char->Char
nextN n c = az !! (n + fromJust (elemIndex c az))
    where az = take 52 $ cycle ['A'..'Z']
main = do
  n <- readLn
  s <- getLine
  putStrLn $ map (\c -> nextN n c ) s