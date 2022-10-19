def fibs(n)
    fib_arr = []
    i = 0
    until i == n
        unless i <= 1
            fib_arr << fib_arr[i - 1] + fib_arr[i - 2]
            i += 1
        else
            fib_arr << i
            i += 1
        end
    end
    p fib_arr
end

fibs 8
            