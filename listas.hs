--[x | x <- [1..20],odd x] --prelude fucntion
findodd :: [Int] -> [Int]
findodd xs = [z |z <- xs,odd z]

--tpc dar uma lista com varios anos que retorna os anos que sao bisexto
bissexto :: Int ->Bool
bissexto ano | mod ano 4 == 0 && (mod ano 100/=0 || mod ano 400 == 0) = True
             |otherwise = False

findbissexto :: [Int] -> [Int]
findbissexto xs = [z | z <- xs, bissexto z]

--tpc dar uma lista com varios dados usando regra implementada

quadrados :: Int -> Int
quadrados x = x*x --regra

findquadrados :: [Int] -> [Int]
findquadrados xs = [quadrados z | z <- xs] --usando a regra

takeelement :: [Int] -> Int -> [Int]
takeelement xs n = [xs !! (n-1)] --retorna o elemento da lista

deleteelement :: [Int] -> Int -> [Int]
deleteelement xs n = [x | x <- xs, x /= (xs !! (n-1))] --retorna a lista sem o elemento

sorted :: (Ord a) => [a] -> Bool
sorted [] = True   -- the empty list is sorted
sorted [x] = True   --base case
sorted (x:y:xs) = if x <= y then sorted (y:xs) else False --recursive case

divisor :: Int -> [Int]
divisor n = [x | x <- [1..n], mod n x == 0] --função divisor para saber os divisores de um numero
--ex divisor 15 = [1,3,5,15]

primo :: Int -> Bool
primo n = null [x | x <- [2..n-1], mod n x == 0] --Primo w/ using a function
--ex primo 15 = False

primo2 :: Int -> Bool
primo2 n = divisor n == [1,n]--primo using divisor as a function
--ex primo2 13 = True

primos :: Int -> [Int]
primos n = [x | x <- [2..n], primo2 x] --lista de primos
--ex primos 20 = [2,3,5,7,11,13,17,19]

--zip['a','b','c'][1,2,3,4]--prelude fuction
--[('a',1),('b',2),('c',3)]--RESULTADO
--zip :: [a] -> [b] -> [(a,b)] --already defined in haslkell
--ambas as listas tem que ter o mesmo numero pq basta um deles esgotar elementos a funcao retorna uma lista de tuplas

pares :: [a] -> [(a,a)]
pares xs = zip xs (tail xs) --zip com o tail para nao retornar o ultimo elemento

ordenado :: Ord a => [a] -> Bool
ordenado [] = True
ordenado [x] = True
ordenado xs=and[x<=y | (x,y) <- pares xs] --and fucntion

