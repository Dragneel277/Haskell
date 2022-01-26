
--a função recebe  a posição ,a letra e String
--retorna uma nova string com a letra na posição
substitui2 :: Int -> a -> [a] -> [a]
substitui2 n x xs = take n xs ++ [x] ++ drop (n+1) xs