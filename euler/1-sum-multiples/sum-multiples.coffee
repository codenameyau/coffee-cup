# Project Euler - 1
# Find the sum of all the multiples of 3 or 5 below 1000

sumMultiples = (end) ->
  sum = 0
  for i in [0..end] by 3
    sum += i
  for i in [0..end] by 5
    sum += i
  sum

console.log sumMultiples(1000)
