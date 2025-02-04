open OUnit2
open Day09

let example_input = "2333133121414131402"

let make_part1_test name expected_output input = 
  name >:: (fun _ -> 
    let disk = parse input in
    assert_equal expected_output (part1 disk) ~printer:Int64.to_string)

let make_part2_test name expected_output input = 
  name >:: (fun _ -> 
    let disk = parse input in 
    assert_equal expected_output (part2 disk) ~printer:Int64.to_string)

let part1_tests = [
  make_part1_test "example_part1" 1928L example_input;
]

let part2_tests = [
  make_part2_test "example_part2" 2858L example_input;
]

let suite = "Day09 Test Suite" >::: [
  "part1 tests" >::: part1_tests;
  "part2 tests" >::: part2_tests;
]

let () = run_test_tt_main suite