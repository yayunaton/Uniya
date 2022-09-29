open Array

module Playersetting = struct
  type colors = Red | Blue | Purple

  type rugs = { color : colors; num : int }
  (** the type of rugs which pair a color type with the number*)

  type coins = { color : colors; num : int }
  (** the type of coins which pair a color type with the number *)

  type player = { name : string; rug : rugs; coin : coins; color : colors }
  (** the type of an effective player  *)

  (** the state of a player spot *)
  type player_state = None | Some of player
end
