main = do
    s1 <- getLine
    v1 <- getLine
    s2 <- getLine
    v2 <- getLine
    t <- getLine
    
    let resposta = sorvete (read s1) (read v1) (read s2) (read v2) (read t)
    print resposta
    
sorvete:: Int -> Int -> Int -> Int -> Int -> Int
sorvete s1 v1 s2 v2 t =
    abs $ calculaPosicao s1 v1 t - calculaPosicao s2 v2 t

calculaPosicao:: Int -> Int -> Int -> Int
calculaPosicao s v t = s + v * t
