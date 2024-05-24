open OUnit2
open Lawrence.Statistics


let tests =
  "test suite for statistics"
  >::: [ ("empty" >:: fun _ -> assert_raises (Invalid_argument "empty list") (fun () -> median []))
       ; ("oddn" >:: fun _ -> assert_equal 3 (median [ 1; 2; 3; 4; 5; 6; 1 ]))
       ; ("evenn" >:: fun _ -> assert_equal 4 (median [ 1; 2; 3; 4; 5; 6 ]))
       ; ("modeInList" >:: fun _ -> assert_equal 1 (mode [1;1;1;2;2;3;3]))
       ; ("noModeInList" >:: fun _ -> assert_raises (NoMode "All elements are unique; no mode in data.") (fun () -> mode [1;2;3;4]))
       ; ("emptyList" >:: fun _ -> assert_raises (Invalid_argument "empty list") (fun () -> mode []))
       ]
;;

let _ = run_test_tt_main tests
