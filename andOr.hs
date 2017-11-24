andOr :: Bool -> Bool -> Bool -> String -> Bool

andOr x y z t = if (t == "AND")
				    then (x && y && z)
				    else (x || y || z)

main = do
	a <- getLine
	b <- getLine
	c <- getLine
	d <- getLine

	let result = andOr (read a) (read b) (read c) d
	print result