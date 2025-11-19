exception NotImplemented
let domain () =
    failwith "REMINDER: You should not be writing tests for undefined values."
  

(* Question 1: Manhattan Distance *)
(* TODO: Write a good set of tests for distance. *)
let distance_tests = [
  (
    ((0, 0), (0, 0)), (* input: two inputs, each a pair, so we have a pair of pairs *)
    0                 (* output: the distance between (0,0) and (0,0) is 0 *)
  );
  
  (
    ((2,1), (4,1)), 2 
  );
  
  (
    ((5,1), (4,1)), 1 
  );
  
  (
    ((5,1), (4,5)), 5 
  );
    
  (* end each case with a semicolon *)
    (* Your test cases go here *)
]
;;

(* TODO: Correct this implementation so that it compiles and returns
         the correct answers.
*)
let distance (x1, y1) (x2, y2) = 
  let x = abs (x1 - x2) in 
  let y = abs (y1 - y2) in 
  
  x + y
    
          

(* Question 2: Binomial *)
(* TODO: Write your own tests for the binomial function.
         See the provided test for how to write test cases.
         Remember that we assume that  n >= k >= 0; you should not write test cases where this assumption is violated.
*)
let binomial_tests = [
  (* Your test cases go here. Correct this incorrect test case for the function. *)
  ((0, 0), 1);
  ((10, 4), 210);
  

];;

(* TODO: Correct this implementation so that it compiles and returns
         the correct answers.
*)
let binomial n k =
  let rec factorial i = 
    if i = 0 || i = 1 then
      1 
    else
      i * factorial (i - 1) in
  factorial n / (factorial k * factorial (n - k))
  
  

(* Question 3: Lucas Numbers *)

(* TODO: Write a good set of tests for lucas_tests. *)
let lucas_tests = [
  (0, 2);
  (1, 1);
  (2, 3);
  (3, 5);

];;

(* TODO: Implement a tail-recursive helper lucas_helper. *)
let rec lucas_helper accum next i =
  if i = 0 then 
    accum 
  else
    lucas_helper next (accum + next) (i - 1)  


(* TODO: Implement lucas by calling lucas_helper. *)
let lucas n =
  lucas_helper 2 1 n
