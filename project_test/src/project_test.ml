open Array

module Gameplay = struct
  (*** Player Type Preset *)

  type player =
    | None
    | Some of { name : string; rug_num : int; coins : int }
        (** the type of the [player], which is a tuple of type [int*int]
    the first int represents the rugs possessed
    the second int represents the coins possessed*)

  type rugs = { owner : player }
  (** the type of the [rug]*)

  type rug_status =
  | None
  | Some of rugs

  (*** Board Type Preset *)

  type grid = {
    grid_position : int * int;
    grid_rug : rug_status
  }
  (** the type [grid] of a 1*1 area on the board, which is the basic element*)

  type board = grid array array
  (** the type of the [board], which is a matrix of type [int array array]
    the array is used to represent the row and column of the board*)

  (*** Unicorn Type Preset *)

  type direction =
    | Front
    | Back
    | Right
    | Left
        (** the type of [direction], which is the unicorn's direction when move*)

  type unicorn = {
    unicorn_direction : direction;
    unicorn_position : grid;
    player_in_charge : player;
  }
  (** the type of [unicorn], has direction and current position*)

  (*** Game Initialization *)

  (** [new_player n] creates a new player {name: n; rugs: 5; coins: 30}*)
  let new_player (n : string) : player =
    Some { name = n; rug_num = 15; coins = 30 }

  (** *)
  let for_loop init start stop step f = 
    let rec iterate i x =
      if i > stop then x else iterate (i + step) (f i x)
    in iterate start init
  
  (** *)
  let new_board (size : int) =
    Array.make_matrix (2 * size) (2 * size) 
      ( {grid_position = (0,0); grid_rug = None ;} : grid )

  (** *)
  let set_coordinate (x_cor : int) (y_cor : int) (grid : grid) =
    {grid with grid_position = (x_cor, y_cor)}
  
  (** *)
  let set_all_coordinate (b : board) =
    
  (** [game_init cute_unicorn size] initialize the game by
      Creating a unicorn that defaultly faced Front
      Throwing that unicorn to a random place on the board*)
  let game_init (cute_unicorn : unicorn) (size : int) : unicorn =
    let big_board = new_board size in
    {
      unicorn_direction = Front;
      unicorn_position =
        big_board.(Random.int ((2 * size) - 1)).(Random.int ((2 * size) - 1));
      player_in_charge = None;
    }

  (*** Still Game Initialization, 
      but may require A2 skills that I do not have now*)
  let player_setup : player list= 
  
  (*** Solid Game Rules *)

  let is_payment (cute_unicorn : unicorn) (playerlist : player list) : bool = 
    match cute_unicorn.unicorn_position with
    | None -> false
    | Some a -> List.mem a.owner playerlist

  let pay (cute_unicorn : unicorn) (playerlist : player list) =

  let receive (cute_unicorn : unicorn) (playerlist : player list) =
  
  (*** Game Play Single Step*)

  let roll_die : int =  

  let determine_direction : direction = 

  let singular_line_movement (position : int * int) (steps : int)

  let single_step (cute_unicorn : unicorn) (current_player : player)
  (roll_die_num : int) (determined_direction : direction) : unicorn =
    match determined_direction with
    | Front { cute_unicorn with 
              unicorn_direction = determined_direction;
              unicorn_position = 
                singular_line_movement unicorn_position roll_die_num; }
    | Back
    | Left
    | Right
    {unicorn_direction = ;
     univorn_position = ;
      player_in_charge = ;}

  
end
