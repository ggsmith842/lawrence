(** [find_sample_size m p c] calculates the sample size needed for a margin of error [m] for a given estimated value of the proportion [p].
    @param m The margin of error.
    @param p The estimated proportion (must be between 0.0 and 1.0 inclusive).
    @param c The confidence level (must be one of 0.99, 0.95, or 0.90).
    @return
      [Some n] where [n] is the calculated sample size if [c] is valid, otherwise [None]. *)
val find_sample_size : float -> float -> float -> int option

val pow : float -> int -> float

(** [lookup k lst] returns the value associated with the key [k] in the association list [lst].
    @param k The key to search for.
    @param lst The association list.
    @return [Some v] if the key [k] is found with value [v], otherwise [None]. *)
val lookup : 'a -> ('a * 'b) list -> 'b option
