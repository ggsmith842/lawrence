let rec lookup k = function
  | [] -> None
  | (k', v) :: t -> if k = k' then Some v else lookup k t
;;

let rec pow x y = if y = 0 then 1. else x *. pow x (y - 1)

(**[find_n] calculates the sample size needed
   for a margin of error [m] for a give an est. value of the proportion [p]. [m] = .99, .95, .90; 1.0 ≥ [p] ≥ 0.0*)
let find_sample_size m p c =
  let ci_zscores = [ 0.99, 2.576; 0.95, 1.960; 0.90, 1.645 ] in
  let z = lookup c ci_zscores in
  match z with
  | Some z ->
    let n = pow (z /. m) 2 *. p *. (1. -. p) in
    Some (int_of_float n + 1)
  | None -> None
;;
