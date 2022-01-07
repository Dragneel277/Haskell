--Soma
--soma :: Int -> Int -> Int
soma x y = x + y  

--Multiplicação
--mult :: Int -> Int -> Int
mult x y = x * y  


--Subtração
--sub :: Int -> Int -> Int
sub x y = x - y  


--Divisão
--divi :: Float -> Float -> Float
divi x y = x / y  


--lados triangulo
--ladosTriangulo :: Float -> Float -> Float -> Bool
ladosTriangulo :: (Ord a, Num a) => a -> a -> a -> Bool
ladosTriangulo a b c = a < b + c && b < a + c && c < a + b

--dobro um numero
--dobro :: Num a => a -> a //náo é necessario
dobro x = x+x

--Quadruplo numero
--quadruplo :: Num a => a -> a //náo é necessario
quadruplo x=dobro (dobro x)

{-media
media a b =(a+b)/2 -}


media ns=sum ns `div` length ns
--função media ns caso n seria a lista e o s no final significa que é uma lista com mais que 1 elemento
--usa-se sum para somar os valores em ns e div(divide-se) para dividir o resultado da soma por tam(length) da lista

alunos::[String]
alunos=["Andre","Fabio","Paula","Rodrigo"]

notas::[Double]
notas= [12.5,13,18.1]

soma2 :: Int->(Int->Int)
soma2 x y =x+y

{--
soma3 ::(Int,Int)->Int
soma3(x,y)=x+y--}


--head retorna a cabeça da função no caso de notas devolve o elemento 0
--head["Maria","Paula","Peixoto"] entrega Maria
--tail
--fst
--last
--null
--sum[1,2,3] recebe qualquel tipo porem é limitado apenas a opcoes numericas

media2 :: [Float] -> Float
media2 xs = sum xs / fromIntegral(length xs)

