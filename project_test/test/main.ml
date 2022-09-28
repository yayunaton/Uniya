open OUnit2
let tests = "project_test test suite" >::: [ ]
let _ = run_test_tt_main tests