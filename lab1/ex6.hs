--implementation of functions using case...of
not' :: Bool -> Bool
not' b = case b of 
            True  -> False
            False -> True

absInt n =
    case (n >= 0) of
        True -> n
        _    -> -n

isItTheAnswer :: String -> Bool
isItTheAnswer s =
    case s of
        "Love" -> True
        _      -> False

or' :: (Bool, Bool) -> Bool
or' b =
    case b of
        (False, False) -> False
        (False, True) -> True
        (True, False) -> True
        (True, True) -> True

and' :: (Bool, Bool) -> Bool
and' b =
    case b of
        (False, False) -> False
        (False, True) -> False
        (True, False) -> False
        (True, True) -> True

nand' :: (Bool, Bool) -> Bool
nand' b =
    case b of
        (False, False) -> True
        (False, True) -> True
        (True, False) -> True
        (True, True) -> False   
        
xor' :: (Bool, Bool) -> Bool
xor' b =
    case b of
        (False, False) -> False
        (False, True) -> True
        (True, False) -> True
        (True, True) -> False       
