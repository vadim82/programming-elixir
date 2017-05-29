fizz_buzz = fn 
    0, 0, _ -> "FizzBuzz"
    0, _, _ -> "Fizz"
    _, 0, _ -> "Buzz"
    _, _, c -> c
 end

IO.puts "(0,0,1) --> #{fizz_buzz.(0,0,1)}"
IO.puts "(0,1,1) --> #{fizz_buzz.(0,1,1)}"
IO.puts "(1,0,1) --> #{fizz_buzz.(1,0,1)}"
IO.puts "(1,1,1) --> #{fizz_buzz.(1,1,1)}"


IO.puts "REMAINDER"

f_run = fn 
    n -> fizz_buzz.(rem(n,3), rem(n,5), n)
end

IO.inspect [
    f_run.(10),
    f_run.(11),
    f_run.(12),
    f_run.(13),
    f_run.(14),
    f_run.(15),
    f_run.(16),
    f_run.(17)
]