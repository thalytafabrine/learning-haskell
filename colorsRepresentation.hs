main = do
    r <- getLine
    g <- getLine
    b <- getLine
    let resposta = getColor (read r) (read g) (read b)
    putStrLn resposta
    
getColor:: Int -> Int -> Int -> String
getColor r g b 
    | (r < 128 || g < 128 || b < 128) = "PRETO"
    | otherwise = "BRANCO"
