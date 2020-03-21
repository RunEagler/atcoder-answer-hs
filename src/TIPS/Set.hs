module TIPS.Set where

import qualified Data.Set as S

universeOne = ["comet","earth","jupiter","mars","venus","mars","venus"]
universeTwo = ["star","jupiter","meteor","comet","planet"]
universeOneSet = S.fromList universeOne
universeTwoSet = S.fromList universeTwo

main = do
  print $ S.fromList universeOne
  print $ S.fromAscList universeOne
  print $ S.fromDescList universeOne
  print $ S.insert "sun" universeOneSet
  print $ S.delete "mars" universeOneSet
  print $ S.member "jupiter" universeOneSet
  print $ S.size universeOneSet
  print $ S.union universeOneSet universeTwoSet
  print $ S.difference universeOneSet universeTwoSet
  print $ S.intersection universeOneSet universeTwoSet
  print $ S.elems universeOneSet
  print $ S.map length universeOneSet
  putStrLn $ S.showTree universeOneSet