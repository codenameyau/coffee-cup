# Miller-Rabin Primality Test
# Determines whether a number is prime

exports.isPrime = (n) ->
  # Step 0: Handle base cases
  if n < 4
    return true
  else if n % 2 is 0
    return false
