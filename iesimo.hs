main = do
    list <- getLine
    position <- getLine
    let answer = iesimo (read list) (read position)
    print answer

iesimo:: [Int] -> Int -> Int
iesimo list position = list !! (position-1)
