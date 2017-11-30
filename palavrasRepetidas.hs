main = do
    list <- getLine
    let answer = getTuples (read list)
    print answer

getTuples:: [String] -> [(String, Int)]
getTuples [] = []
getTuples (head:tail) = do
    let quantity = (getQuantity head tail) + 1
    let list = removeElement head tail
    [(head, quantity)] ++ getTuples list

getQuantity:: String -> [String] -> Int
getQuantity word [] = 0
getQuantity word (head:tail) =
    if head == word 
    then 1 + getQuantity word tail
    else getQuantity word tail
    
removeElement :: String -> [String] -> [String]
removeElement word [] = []
removeElement word list = [p | p <- list, p /= word]
