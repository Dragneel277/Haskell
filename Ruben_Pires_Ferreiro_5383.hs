--Exercicio 1
-- Define um valor constante com o nome idade que armazena o valor 18
idade :: Int
idade = 18 --Defenir o valor 18 na variavel idade

--Exercicio 2
--criar tupla contendo nome, idade e carta de condução e utiliza a idade defenida anteriormente
pessoa :: (String, Int, Bool)-> (String,String)
pessoa(nome,age,carta)
 | age >= idade && not carta =(nome," Precisa fazer a Carta conducao")
 | age >= idade && carta = (nome,"Pode Conduzir") 
 | otherwise = (nome,"Nao tem idade para ter Carta")

--exercicio 3 a
terceiro :: [a] -> a
terceiro xs=head (tail (tail  xs))--retorna o terceiro ultimo elemento da lista usando o head e o tail

--exercicio 3 b
terceiro2 :: [a] -> a
terceiro2 xs=xs !! 2--retorna o terceiro ultimo elemento da lista usando indexação

--exercicio 3c
terceiro3 :: [a] -> a
terceiro3 [_,_,x] = x--retorna o terceiro ultimo elemento da lista usando casamento padrão



--exercicio 4a
igualtail :: [a] -> [a]
igualtail xs =
 if null xs == True then xs --se a lista for vazia retorna a lista
 else tail xs --se não for vazia retorna o tail da lista

--exercicio 4b
igualtail2 :: [a] -> [a]
igualtail2 xs   
 | null xs = xs  --se a lista for vazia retorna a lista
 | otherwise = tail xs --se não for vazia retorna o tail da lista

--exercicio 4c
igualtail3 :: [a] -> [a]
igualtail3 [] = [] -- se a lista for vazia retorna a liast
igualtail3 (_:xs) = xs --retorna o tail da lista
--não tava a conseguir encaixar o null por isso ficou representado assim, porem não da erro e devolve a mesma resposta que o null


--Elaborado por Ruben Pires Ferreiro 5383