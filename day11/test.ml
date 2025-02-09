open OUnit2
open Day11

let example_input = "125 17"

let make_part1_test name expected_output input = 
  name >:: (fun _ -> 
    let stones = parse input in 
    assert_equal expected_output (part1 stones) ~printer:string_of_int)

let part1_test = [
  make_part1_test "part1 test" 55312 example_input
]

let suite = "Day11 Test Suite" >::: [
  "part1 tests" >::: part1_test;
]

let () = run_test_tt_main suite