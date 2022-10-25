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

def fibs_rec(n)
    if n == 1
        return [0, 1]
    elsif n == 0
        return [0]
    else
        arr = fibs_rec(n-1)
        p arr << arr[-1] + arr[-2]
    end
end



 fibs_rec(8)