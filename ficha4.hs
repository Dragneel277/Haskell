--ficha 4
--1. Define uma função que retorna todos os elementos de uma lista excepto o ultimo; 
cutlast::[a]->[a]
cutlast [] = [] --caso lista for vazia
cutlast [x] = []    --caso a lista tvr um elemnto so corta esse elemento
cutlast (x:xs) = x:cutlast xs   --corta o ultimo elemento da lista

--2. Define uma função que retorna todos os elementos de uma lista de inteiros que são primos. 
primos::[Int]->[Int]
primos [] = []      --caso lista for vazia
primos (x:xs) = if isprimo x then x:primos xs else primos xs    --se o numero for primo ele é adicionado na lista


isprimo::Int->Bool
isprimo x = (length [y | y<-[1..x], x `mod` y == 0]) == 2   --se o resto da divisão for 0, então é primo

--3.Define uma função que verifique se todos os elementos de uma lista são True.
alltrue::[Bool]->Bool
alltrue [] = True       --caso lista for vazia
alltrue (x:xs) = if x == True then alltrue xs else False    --caso lista nao for vazia,verifica os elementos da lista se são todos true

--4.Define uma função que retorna uma lista com n elementos idênticos:
identicos::Int->a->[a]
identicos 0 _ = []      --se n for 0, retorna uma lista vazia
identicos n x = x:identicos (n-1) x     --se n for diferente de 0, retorna uma lista com n elementos iguais a x

--5.Define uma função que selecione um elemento de uma lista dado a posição:
selectElement::[a]->Int->a
selectElement [] _ = error "Lista vazia"    --caso a lista tiver vazia retorna erro
selectElement (x:xs) 0 = x               --caso a posição seja 0 retorna o primeiro elemento
selectElement (x:xs) n = selectElement xs (n-1) --caso a posição seja diferente de 0 retorna o elemento da posição n-1

--6. Define uma função que verifique se o elemento pertence á lista:
isinlist::Eq a=>a->[a]->Bool
isinlist _ [] = False    --caso a lista seja vazia retorna false
isinlist x (y:ys) = if x == y then True else isinlist x ys   --caso a lista nao seja vazia, verifica se o elemento pertence a lista

--7. Define uma função que agrupa elementos de duas lista em uma única lista. 
agrupaLista::Eq a=>[a]->[a]->[a]
agrupaLista [] _ = []    --caso a lista 1 for vazia retorna uma lista vazia
agrupaLista _ [] = []    --caso a lista 2 for vazia retorna uma lista vazia
agrupaLista (x:xs) (y:ys) = (x:xs) ++ (y:ys)  --caso a lista 1 e 2 nao sejam vazias, retorna a lista 1 juntado com a lista 2
