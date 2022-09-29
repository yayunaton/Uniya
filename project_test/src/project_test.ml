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

  (*** Board Type Preset *)

  type grid =
    | None
    | Some of rugs
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

  (** [game_init cute_unicorn size] initialize the game by
      Creating a unicorn that defaultly faced Front
      Throwing that unicorn to a random place on the board*)
  let game_init (cute_unicorn : unicorn) (size : int) : unicorn =
    let big_board = Array.make_matrix (2 * size) (2 * size) None in
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
  
  (*** Game Play Single Step*)

  let roll_die : int =  

  let determine_direction : direction =

  let single_step (cute_unicorn : unicorn) (current_player : player) : unicorn =
    {unicorn_direction = ; univorn_position = ; player_in_charge = ;}

  
end
