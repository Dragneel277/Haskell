{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# LANGUAGE BlockArguments #-}
--exercicio 3 a
quatro::[a] -> a
quatro xs=head (tail (tail (tail xs)))--retorna o quatro ultimo elemento da lista

--exercicio 3b
quatro2::[a] -> a
quatro2 xs=xs !! 3 -- !! é o indice de um elemento de uma lista que começa no indice 0

--exercicio 3c
quatro3::[a] -> a
quatro3 (_:xs) = xs!!2 --retorna o quatro ultimo elemento da lista

