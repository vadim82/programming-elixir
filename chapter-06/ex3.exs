defmodule Chop do
    def guess(actual, _..current) when current == actual do
        IO.puts "#{current}"
        current
    end
        def guess(actual, current.._) when current == actual do
        IO.puts "#{current}"
        current
    end

    def guess(actual, a..b) do
        mid = div(a+b, 2)
        IO.puts "Is it #{mid}?"
        if actual < mid do
            guess actual, a..mid
        else
            guess actual, mid..b
        end
    end

end


Chop.guess(24, 12..200)