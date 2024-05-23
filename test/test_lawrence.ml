open OUnit2
open Lawrence.Measures

let tests = "test suite for measures" >::: [
  "empty" >:: (fun _ -> assert_raises (Invalid_argument "empty list") (fun () -> median []));
  "oddn" >:: (fun _ -> assert_equal 3 (median [1;2;3;4;5;6;1]));
]

let _ = run_test_tt_main tests