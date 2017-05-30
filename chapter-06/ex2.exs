defmodule MyModule do
    def sum(n) when n > 1 do
        n + sum(n-1)
    end

    def sum(1), do: 1


    def gcd(x,y) when x > 0 and y > 0 do
        gcd(y, rem(x,y))
    end

    def gcd(x,0), do: x
    
end

IO.puts "Sum of 10 is #{MyModule.sum(10)}"
# IO.puts "Sum of -1 is #{MyModule.sum(-1)}"


IO.puts "gcd(10,5) is #{MyModule.gcd(10,5)}"