prefix = fn a1 ->
    fn a2 -> "#{a1} #{a2}" end
end

IO.puts prefix.("ARG1").("ARG2")