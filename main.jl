using Dates

function fib(n)
    arr = [1, 2, 3]
    for i in 1:n - 1
        arr[3] = arr[3] + arr[2]
        arr[2] = arr[3] - arr[2]
        arr[1] = arr[2] - arr[1]
    end
    return arr[1]
end

function test(fibnum, iters)
    num = 0 
    for i in 1:iters
        num = fib(fibnum)
    end
    return num
end

fibnum = parse(Int, ARGS[1])
iters = parse(Int, ARGS[2])

#Warmup
test(fibnum, 100)

#Test
start = now()
num = test(fibnum, iters)
_end = now()

println("Answer: ", num)
println(string("Time: ", _end - start, "\n"))