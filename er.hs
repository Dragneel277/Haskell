--aula 03/12/2021
concatenar :: [[a]] -> [a]
concatenar xss = [x | xs <- xss, x <- xs]