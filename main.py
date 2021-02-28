import time
import math
import sys

def fib(n):
    arr = [1, 2, 3]
    for i in range(1, n):
        arr[2] = arr[2] + arr[1]
        arr[1] = arr[2] - arr[1]
        arr[0] = arr[1] - arr[0]
    return arr[0]

def test(fibnum, iters):
    num = 0
    for i in range(iters):
        num = fib(fibnum)
    return num

fibnum = int(sys.argv[1])
iters = int(sys.argv[2])

#Warmup
test(fibnum, 100)

#Test
start = math.floor(time.time() * 1000)
num = test(fibnum, iters)
end = math.floor(time.time() * 1000)

print("Answer: " + str(num))
print("Time: " + str(end - start) + " milliseconds\n")