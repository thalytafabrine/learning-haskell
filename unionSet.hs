main = do
    list1 <- getLine
    list2 <- getLine
    let answer = unionSet (read list1) (read list2)
    print answer
    
unionSet:: [Int] -> [Int] -> [Int]
unionSet list1 list2 = list1 ++ noRepetition list2 list1

noRepetition:: [Int] -> [Int] -> [Int]
noRepetition [] list2 = []
noRepetition list1 [] = []
noRepetition (head:tail) list1 = 
    if exist head list1 then [] ++ noRepetition tail list1
    else [head] ++ noRepetition tail list1

exist:: Int -> [Int] -> Bool
exist num [] = False
exist num (head:tail) = if head == num then True else exist num tail
