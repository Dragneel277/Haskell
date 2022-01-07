main = do
  putStrLn "Hello"
  putStrLn "World"

{-sinal:: Int->Int
sinal n = if n<0 then -1 else if n==0 then 0 else 1-}

{-isAproved:: Double->[Char]
isAproved n = if n<0 then "Valor nao aceite" else
 if n<8 then "Reprovado" else
 if n<12 then "Exame" else
 if n>20 then "Valor nao aceite" else "Aprovado"-}


isAproved2:: (Num a, Ord  a) => a->String --Rational tipe recebe tamto inteiros,como float como double
isAproved2 n
  | n<0 = "Valor nao aceite"
  | n<8 = "Reprovado"
  | n<12 = "Exame"
  | n>20 = "Valor nao aceite"
  | otherwise = "Aprovado"


nota ::  (Fractional a) => a->a->a->a
nota x y z = (x+y+z)/ 3


maior :: (Ord a) => a->a->a->a
maior x y z
 |x>y && x>z=x
 |y>x && y>z=y
 |otherwise=z

pauta :: (Fractional a, Ord a) => a->a->a->String
pauta x y z
 |nota x y z >= 12 = "Aprovado"
 |nota x y z < 12 && nota x y z >= 8 = "Exame"
 |otherwise = "Reprovado"


pauta2 :: (Ord a, Fractional a) => a->a->a->String
pauta2 x y z = isAproved2 (nota x y z)--improved pauta by using isAproved to give the grading


