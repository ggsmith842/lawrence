open OUnit2
open Statistics
open Counting
open Sampling

let median_tests =
  "test suite for statistics"
  >::: [ ("empty"
          >:: fun _ -> assert_raises (Invalid_argument "empty list") (fun () -> median [])
         )
       ; ("oddn"
          >:: fun _ -> assert_equal 3.0 (median [ 1.0; 2.0; 3.0; 4.0; 5.0; 6.0; 1.0 ]))
       ; ("evenn" >:: fun _ -> assert_equal 3.5 (median [ 1.; 2.; 3.; 4.; 5.; 6. ]))
       ]
;;

let mode_tests =
  "test suite for mode functions"
  >::: [ ("modeInList" >:: fun _ -> assert_equal 1 (mode [ 1; 1; 1; 2; 2; 3; 3 ]))
       ; ("noModeInList"
          >:: fun _ ->
          assert_raises (NoMode "All elements are unique; no mode in data.") (fun () ->
            mode [ 1; 2; 3; 4 ]))
       ; ("emptyList"
          >:: fun _ -> assert_raises (Invalid_argument "empty list") (fun () -> mode []))
       ; ("strModeInList"
          >:: fun _ -> assert_equal "dog" (str_mode [ "cat"; "dog"; "dog" ]))
       ; ("strNoModeInList"
          >:: fun _ ->
          assert_raises (NoMode "All elements are unique; no mode in data.") (fun () ->
            str_mode [ "cat"; "dog" ]))
       ]
;;

let exp_value_tests =
  "test suit for expected value"
  >::: [ ("validArgs"
          >:: fun _ -> assert_equal 23. (exp_val [ 10.0; 20.0; 30.0 ] [ 0.1; 0.5; 0.4 ]))
       ]
;;

let sampling_tests = 
  "test suit for sampling"
  >::: [
    ("validCase" >:: fun _ -> assert_equal (Some 601) (find_sample_size 0.04 0.50 0.95))
  ]

let counting_tests =
  "test suit for counting functions"
  >::: [ ("factorialgt1" >:: fun _ -> assert_equal 6 (factorial 3))
       ; ("factorialeq1" >:: fun _ -> assert_equal 1 (factorial 1))
       ; ("factorialeq0" >:: fun _ -> assert_equal 1 (factorial 0))
       ; ("combinationsValid" >:: fun _ -> assert_equal 6 (combinations 4 2))
       ; ("combinationsValidneqk" >:: fun _ -> assert_equal 1 (combinations 4 4))
       ; ("combinationsInvalid"
          >:: fun _ ->
          assert_raises (Invalid_argument "args must satisfy n ≥ r ≥ 0") (fun () ->
            combinations 2 4))
       ; ("combinationsValid" >:: fun _ -> assert_equal 12 (permutations 4 2))
       ; ("PermutationsValidneqk" >:: fun _ -> assert_equal 24 (permutations 4 4))
       ; ("permutationsInvalid"
          >:: fun _ ->
          assert_raises (Invalid_argument "args must satisfy n ≥ r ≥ 0") (fun () ->
            permutations 2 4))
       ]
;;

(* Full test suite *)
let tests =
  "Full test suite" >::: [ median_tests; mode_tests; counting_tests; exp_value_tests; sampling_tests ]
;;

(* Run test suite *)
let _ = run_test_tt_main tests
