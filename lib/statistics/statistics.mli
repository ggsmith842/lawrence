(** Calculate the median of a list of floats.
    @param data A list of float numbers.
    @return The median of the list.
    @raise Invalid_argument if the list is empty. *)
val median : float list -> float

(** Calculate the mode of a list of integers.
    @param data A list of integer numbers.
    @return The integer mode of the list.
    @raise Invalid_argument if the list is empty. *)
val mode : int list -> int

(** Calculate the mode of a list of strings.
    @param data A list of string values.
    @return The string mode of the list.
    @raise Invalid_argument if the list is empty. *)
val str_mode : string list -> string

(** Exception raised when there is no mode in the data. *)
exception NoMode of string

(** Calculate the expected value.
    @param payout A list of payout values.
    @param probability A list of probabilities.
    @return The expected value.
    @raise Failure if the lists have different lengths. *)
val exp_val : float list -> float list -> float
