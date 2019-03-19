module Triangle exposing (Triangle(..), triangleKind)


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


triangleKind : number -> number -> number -> Result String Triangle
triangleKind x y z =
    if x > 0 && y > 0 && z > 0 then
        if isLegal x y z then
            if x == y && y == z then
                Ok Equilateral

            else if x == y || y == z || z == x then
                Ok Isosceles

            else
                Ok Scalene

        else
            Err "Violates inequality"

    else
        Err "Invalid lengths"


isLegal : number -> number -> number -> Bool
isLegal x y z =
    x + y > z && y + z > x && z + x > y
