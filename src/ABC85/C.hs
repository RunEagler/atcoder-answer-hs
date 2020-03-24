

isTruth::Int->Int->[Int]
isTruth n y = head ([[a,b,c] |a <- [0..n],b<- [0..n-a],let c =(n-a-b), c >= 0 && 10000*a + 5000*b + 1000*c == y] ++ [[-1,-1,-1]])
 
main = do
  [n,y] <- map read . words <$> getLine
  putStrLn $ unwords . map show $ isTruth n y