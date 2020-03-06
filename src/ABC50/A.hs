module ABC50.A where

main = do
  [a,op,b] <- words <$> getLine
  let [s,t] = [read a,read b]
  print $ if op == "+" then s+t else s-t