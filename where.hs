{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
--calc_imc :: (Ord a, Fractional a) => a -> a -> [Char]
calc_imc peso altura
 | imc <=18.5 = "Abaixo do peso"
 | imc <=25.0 = "Peso normal"
 | imc <=30.0 = "Sobrepeso"
 | otherwise = "Obesidade"
 where imc = peso /altura ^2


test :: [Char] -> Bool
test ['a',_,_] = True
test _         = False

h :: [a]->a --função que funciona como head
h (x:_) = x

t :: [a]->[a] --funcao que funciona como o tail
t (_:xs) = xs 