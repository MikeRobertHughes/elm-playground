import Html

multiply a b = a * b

square a = multiply a a

productOfSquares a b = multiply (square a) (square b)

incrementAll list = List.map (\ n -> n + 1) list

incrementAll2 = List.map (\ c -> c +1)

main = Html.p []
    [ Html.text <| "3 x 5    = " ++ (toString <| multiply 3 5),
      Html.br [] [],
      Html.text <| "4²       = " ++ (toString <| square 4),
      Html.br [] [],
      Html.text <| "2² x 3²  = " ++ (toString <| productOfSquares 2 3),
      Html.br [] [],
      Html.text <| "incrementAll [1, 2, 3] = " ++ (toString <| incrementAll [1,2,3]),
      Html.br [] [],
      Html.text <| "incrementAll2 [1, 2, 3] = " ++ (toString <| incrementAll2 [1,2,3])
    ]