list_concat = fn [:a, :b], [:c, :d] -> [:a, :b, :c, :d] end

sum = fn a,b,c -> a + b + c end

pair_tuple_to_list = fn {a,b} -> [a,b] end

IO.puts "LIST CONCAT"
IO.inspect list_concat
IO.inspect list_concat.([:a, :b], [:c, :d])

IO.puts "SUM"
IO.inspect sum
IO.inspect sum.(1,2,3)

IO.puts "PAIR TUPLE TO LIST"
IO.inspect pair_tuple_to_list
IO.inspect pair_tuple_to_list.({12, 15})



