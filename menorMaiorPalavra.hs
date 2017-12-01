main = do
    palavra1 <- getLine
    palavra2 <- getLine
    let resposta = maiorMenor palavra1 palavra2
    putStrLn resposta
   
maiorMenor :: String -> String -> String
maiorMenor palavra1 palavra2 
    | (length palavra1 < length palavra2) = palavra1 ++ "\n" ++ palavra2
    | (length palavra2 < length palavra1) = palavra2 ++ "\n" ++ palavra1
    | otherwise = palavra1 ++ "\n" ++ palavra1
