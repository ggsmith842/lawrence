(** [factorial] returns the value of n! for an integer n *)
let rec factorial n =
  match n with
  | n when n = 1 || n = 0 -> 1
  | n -> n * factorial (n - 1)
;;

(** [combinations] returns the total number of combinations
    for a sample of size n, with k choices*)
let combinations n k =
  match n, k with
  | n, k when n <= 0 || n < k -> invalid_arg "args must satisfy n ≥ r ≥ 0"
  | n, k -> factorial n / (factorial k * factorial (n - k))
;;

(* if not (0 < n && k <= n) *)

(** [permutations] returns the total number of permutations
    for a sample of size n, with k choices*)
let permutations n k =
  match n, k with
  | n, k when n <= 0 || n < k -> invalid_arg "args must satisfy n ≥ r ≥ 0"
  | n, k -> factorial n / factorial (n - k)
;;
