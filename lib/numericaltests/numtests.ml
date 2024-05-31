open Statistics

(* Ho: the medians of s1 & s2 are equal *)
let s1 = [8.;12.;14.;15.;16.] ;;
let s2 = [9.;11.;13.;14.;18.] ;;

let two_sample_median_test data1 data2 =
  let data = (data1 @ data2) in
  let mid = median data in
  let k = List.length data in
  (* number above median (nam) *)
  let nam1 = List.length (List.filter (fun x -> x > mid) data1) in
  (* number below or equal median (nbem) *)
  let nbem1 = List.length (List.filter (fun x -> x <= mid) data1) in
  let nam2 = List.length (List.filter (fun x -> x > mid) data2) in
  let nbem2 = List.length (List.filter (fun x -> x <= mid) data2) in
  let exp_freq1 = (nbem1 + nbem2) * (List.length data1) / k in
  let exp_freq2 = (nam1 + nam2) * (List.length data2) / k in
  Printf.printf "Exp_freq 1: %d -- Exp_freq 2: %d" exp_freq1 exp_freq2
  
;;
