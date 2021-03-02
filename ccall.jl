using Dates

function test(fibnum, iters)
    num = 0 
    for i in 1:iters
        num = ccall((:fib, "main"), Int, (Int,), fibnum)
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