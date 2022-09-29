type player = string * int * int
(** the type of the [player], which is a tuple of type [int*int]
    the first int represents the rugs possessed
    the second int represents the coins possessed*)

type board = int array array
(** the type of the [board], which is a matrix of type [int array array]
    the array is used to represent the row and column of the board*)

type rugs = int array array
(** the type of the [rug], which is the cover that determined the main
    game properties. It is designed to be a 1 * 2 array*)

let new_player (name : string) : player = (name, 15, 30)
