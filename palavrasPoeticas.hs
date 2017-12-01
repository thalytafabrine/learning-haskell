main = do
    palavra1 <- getLine
    palavra2 <- getLine
    let resposta = saoPoeticas palavra1 palavra2
    putStrLn resposta
    
saoPoeticas :: String -> String -> String
saoPoeticas p1 p2
    | (head p1 == head p2 && last p1 == last p2) = "S"
    | otherwise = "N"
