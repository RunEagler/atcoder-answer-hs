module ABC162.D where

main = do
  n <- readLn
  s <- getLine::IO[Char]
  let (r,g,b) = foldl (\(r,g,b) (i,c)-> if(c == 'R') then (r++[i],g,b) else if(c=='G')then (r,g++[i],b) else (r,g,b++[i])) ([],[],[]) $ zip [1..n] s
  let all = length(r) * length(g) * length(b)
  let g
  
  print $ r
  print $ g
  print $ b