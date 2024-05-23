(* Contains median and mode functions *)

let data = [ 1; 2; 3; 4; 5; 6; 1 ]

(** [median data] is the median of the elements of [data].
    An empty list will return None. *)
let median data =
  let n = List.length data in
  if data = []
  then invalid_arg "empty list"
  else (
    let sorted_data = List.sort compare data in
    if n mod 2 = 0
    then (
      let mid1 = List.nth sorted_data ((n / 2) - 1) in
      let mid2 = List.nth sorted_data ((n / 2) + 1) in
      (mid1 + mid2) / 2)
    else List.nth sorted_data (n / 2))
;;

let mode data =
  let n = List.length data in
  if data = []
  then invalid_arg "empty list"
  else (
    let counter = Hashtbl.create n in
    let update_counter x =
      if Hashtbl.mem counter x
      then (
        let current_count = Hashtbl.find counter x in
        Hashtbl.replace counter x (succ current_count))
      else Hashtbl.replace counter x 1
    in
    List.iter update_counter data;
    Hashtbl.to_seq counter |> List.of_seq)
;;
