(* Contains median and mode functions *)


let data = [1;2;3;4;5;6]

(** [median data] is the median of the elements of [data].
    An empty list will return None. *)
let median data = 
  let n = List.length data in
  if n = 0 then
    None
  else
    let sorted_data = List.sort compare data in
    if n mod 2 = 0
      then
        let mid1 = List.nth sorted_data (n/2 - 1) in
        let mid2 = List.nth sorted_data (n/2 + 1) in
        Some ((mid1 + mid2) / 2)
      else
        Some (List.nth sorted_data (n/2) )
;;