module ABC162.C where 


g::Int->Int->Int->Int
g a b c = gcd a (gcd b c)

main = do
  k <- readLn
  print $ sum [g a b c |a <- [1..k],b<-[1..k],c<-[1..k]]
  