# Miller-Rabin Primality Test
# Determines whether a number is prime

exports.isPrime = (n) ->
  # Step 0: Handle base cases
  if n < 4
    return true
  else if n % 2 is 0
    return false

  # Step 1: Find 'm' such that n-1 = 2^k * m
  m = n - 1
  while m % 2 is 0
    m = m / 2

  # [todo] Step 2: Choose 'a' such that 1 < a < n
  a = 2

  # Step 2: Compute if composite or possible prime]
  b = Math.pow(a, m)
  while b > 1
    b = Math.pow(b, 2) % n

    # Returns: possibly prime
    if b is (n - 1)
      return true

    # Returns: definitely composite
    else if b is 1
      return false

  # Returns: Possibly prime
  return true
