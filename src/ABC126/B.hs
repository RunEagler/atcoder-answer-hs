module ABC126.B where

isValid n = n > 0 && n <= 12

main = do
  (a,b) <- splitAt 2 <$> getLine
  let p = isValid $ read a
  let q = isValid $ read b
  putStrLn $ case (p,q) of
    (True,True) -> "AMBIGUOUS"
    (True,False) -> "MMYY"
    (False,True) -> "YYMM"
    otherwise -> "NA"
