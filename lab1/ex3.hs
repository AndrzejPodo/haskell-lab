--If statements

sgn :: Int -> Int
sgn n = if n < 0
    then -1
    else if n == 0
        then 0
        else 1

absInt :: Int -> Int
absInt x = if x < 0
    then -x
    else x

min2Int :: (Int, Int) -> Int
min2Int (x, y) = if x < y
    then x
    else y

min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) = if z < min2Int(x, y)
    then z
    else min2Int(x, y)

toUpper :: Char -> Char
toUpper c = if c <= 'z' && c >= 'a'
    then  toEnum (fromEnum(c) - 32)::Char 
    else c

toLower :: Char -> Char
toLower c = if c <= 'Z' && c >= 'A'
    then toEnum (fromEnum(c) + 32)::Char
    else c

isDigit :: Char -> Bool
isDigit c = c >= '0' && c <= '9'

charToNum :: Char -> Int
charToNum c = if c >= '0' && c <= '9'
    then fromEnum(c)-fromEnum('0')
    else -1 

romanDigit :: Char -> String
romanDigit c = if c == '1'
    then "I"
    else if c == '2'
        then "II"
    else if c == '3'
        then "III"
    else if c == '4'
        then "IV"
    else if c == '5'
        then "V"    
    else if c == '6'
        then "VI"
    else if c == '7'
        then "VII"
    else if c == '8'
        then "VIII"
    else if c == '9'
        then "IX"   
    else ""       