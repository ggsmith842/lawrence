(* Contains median and mode functions *)
exception NoMode of string


(** [median data] is the median of the elements of [data].
    An empty list will return None. *)
let median data =
  let n = List.length data in
  if data = []
  then invalid_arg "empty list"
  else 
    let sorted_data = List.sort compare data in
    if n mod 2 = 0
    then 
      let mid1 = List.nth sorted_data ((n / 2) - 1) in
      let mid2 = List.nth sorted_data (n / 2) in
      (mid1 +. mid2) /. 2.0
    else List.nth sorted_data (n / 2)
;;


module Ints = Set.Make (Int)

(** [mode data] is the most frequent integer element of the elements in [data].
    [data] must have length > 0. Returns an integer value *)
let mode data =
  match data with
  | [] -> invalid_arg "empty list"
  | _ ->
    if List.length (Ints.to_list (Ints.of_list data)) = List.length data
    then raise (NoMode "All elements are unique; no mode in data.")
    else (
      let counter = Hashtbl.create (List.length data) in
      List.iter
        (fun x ->
          Hashtbl.replace
            counter
            x
            (1 + (Hashtbl.find_opt counter x |> Option.value ~default:0)))
        data;
      let max_key, _ =
        Hashtbl.fold
          (fun key count (max_key, max_count) ->
            if count > max_count then key, count else max_key, max_count)
          counter
          (List.hd data, 0)
      in
      max_key)
;;


module Strs = Set.Make (String)

(** [str_mode data] is the most frequent string element of the elements in [data].
    [data] must have length > 0. Returns a string value *)
let str_mode data =
  match data with
  | [] -> invalid_arg "empty list"
  | _ ->
    if List.length (Strs.to_list (Strs.of_list data)) = List.length data
    then raise (NoMode "All elements are unique; no mode in data.")
    else (
      let counter = Hashtbl.create (List.length data) in
      List.iter
        (fun x ->
          Hashtbl.replace
            counter
            x
            (1 + (Hashtbl.find_opt counter x |> Option.value ~default:0)))
        data;
      let max_key, _ =
        Hashtbl.fold
          (fun key count (max_key, max_count) ->
            if count > max_count then key, count else max_key, max_count)
          counter
          (List.hd data, 0)
      in
      max_key)
;;

