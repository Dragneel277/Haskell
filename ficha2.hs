{-1. Defina duas funções que recebem dois valores e retorna o maior deles. Use
expressões condicionais e equações com guardas, respetivamente.-}
me2v :: (Ord a) => a->a->a --me2v significa maior entre 2 valores
me2v x y
 |x>y=x
 |otherwise=y

{-2. Defina duas funções que recebem três valores e retorna o maior deles. Use
expressões condicionais aninhadas e equações com guardas, respetivamente.-}
maior3 :: (Ord a) => a->a->a->a
maior3 x y z
  |x>y && x>z=x
  |y>x && y>z=y
  |otherwise=z

{-3. Defina uma função que recebe três valores e retorna o maior deles. Não use
expressões condicionais e nem equações com guardas. Use a função maior 2
do exercício 1.-}
maior3v2 ::Ord a =>a->a->a->a
maior3v2 x y z= me2v (me2v x y ) z

{-4. Crie uma função que dado qualquer número inteiro de 1 a 10 e retorna uma
String com o nome do número, caso o valor não esteja nesse intervalo deve ser
retornado “Zero”. Exemplo: > 5 ! “Cinco”-}
cn2s ::(Ord a, Num a) => a->String --Diminutivo de Convert number 2 String
cn2s x
 |x == 1 = "Um"
 |x == 2 = "Dois"
 |x == 3 = "Tres"
 |x == 4 = "Quatro"
 |x == 5 = "Cinco"
 |x == 6 = "Seis"
 |x == 7 = "Sete"
 |x == 8 = "Oito"
 |x == 9 = "Nove"
 |x == 10 = "Dez"
 |otherwise = "Zero"

{-5. Elabore uma função que dada uma determinada data (dia, mês e ano), verifique
se é válida retornando True caso for valida ou False caso contrário.-}
bissexto :: Int ->Bool
bissexto ano | mod ano 4 == 0 && (mod ano 100/=0 || mod ano 400 == 0) = True
             |otherwise = False

validDate :: Int -> Int ->Int -> Bool
validDate d m a
 | d <= 31 && m `elem` highMonths = True  -- `elem` is a function that checks elements in a list
 | d <= 30 && m `elem` lowMonths = True
 | d <= 28 && m == 2 = True
 | d <= 29 && m == 2 && bissexto a = True
 | otherwise = False
 where
  highMonths = [1, 3, 5 , 7, 8, 10, 12]
  lowMonths = [4, 6, 9, 11]

{-6. Escreva uma função que fornecido o salário bruto de um funcionário retorna o
salário a receber, tendo em conta que todos os funcionários com salário igual ou
superior a 11 mil escudos terão desconto de imposto de 7% e igual ou superior a
35 mil escudos será de 12%.-}
salario :: (Fractional a , Ord a)=> a -> a
salario x | x > 11000 && x < 35000 = x - (x * 0.07)
 | x >= 35000 = x - (x * 0.12)
 | otherwise = x



 --Elaborado Por Ruben Ferreiro-5383 Eisc 2 ano