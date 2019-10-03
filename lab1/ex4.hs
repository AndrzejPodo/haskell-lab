--guards
absIntG :: Int->Int
absIntG n | n >= 0 = n
          | otherwise = -n  

min2IntG :: (Int, Int)->Int
min2IntG (x, y) | x <= y = x
                | y < x = y

min3IntG :: (Int, Int, Int)->Int
min3IntG (x, y, z) | x <= min2IntG(y, z) = x
                   | x > min2IntG(y, z) = min2IntG(y, z)