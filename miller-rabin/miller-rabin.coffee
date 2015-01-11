# Miller-Rabin Primality Test
# Determines whether a number is prime

exports.checkMod = (b, n) ->
  if b < n
    return b - n
  return b % n

exports.isPrime = (n, thresh=0.80) ->
  # Step 0: Handle base cases
  if n < 4
    return true
  else if n % 2 is 0
    return false

  # Step 1: Find 'm' such that n-1 = 2^k * m
  m = n - 1
  while m % 2 is 0
    m = m / 2

  # Step 2: Define probability of prime
  correct = 0.0
  count = 1

  # Step 3: Compute if composite or possible prime]
  while correct < thresh
    a = count + 1
    b = Math.pow(a, m)
    while b > 1
      b = @checkMod(b, n)
      console.log(b)
      # Returns: definitely composite
      if b is 1
        return false

      # Returns: possibly prime
      else if b is -1
        correct = (correct + 1) / count
        count += 1

      b = Math.pow(b, 2)

  # [TODO]: Fix last
  return false
