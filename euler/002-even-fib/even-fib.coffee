# Project Euler - 2
# Find the sum of all even fib numbers under four million

sumFibEven = (end) ->
  a = 1
  b = 1
  sum = 0
  while a < end
    if a % 2 is 0
      sum += a
    [a, b] = [a+b, a]
  sum

console.log sumFibEven(4000000)
