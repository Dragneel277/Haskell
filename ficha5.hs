--função de ordem superior que recebe lista e inverte a lista
inverte :: [a] -> [a]
inverte [] = []
inverte (x:xs) = reverse xs ++ [x]

--substitui na posução indicada
substitui :: Int -> a -> [a] -> [a]
substitui 0 x (y:ys) = x:ys
substitui n x (y:ys) = y:substitui (n-1) x ys


--a função recebe uma String e adiciona a String as Sub-Strings na lista
concatena2 :: String -> [String] -> [String]
concatena2 s xs = map (s ++) xs
