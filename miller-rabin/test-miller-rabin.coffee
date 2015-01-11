# Test Miller-Rabin
assert = require 'assert'
millerRabin = require './miller-rabin'

# Test Case: base
assert.equal(true, millerRabin.isPrime(1))
assert.equal(true, millerRabin.isPrime(2))
assert.equal(true, millerRabin.isPrime(3))

# Test Case: even
assert.equal(false, millerRabin.isPrime(4))
assert.equal(false, millerRabin.isPrime(40))
assert.equal(false, millerRabin.isPrime(400))

# Test Case: prime
assert.equal(true, millerRabin.isPrime(17))
# assert.equal(true, millerRabin.isPrime(877))
# assert.equal(true, millerRabin.isPrime(2131))

# Test Case: composite (carmichaels)
assert.equal(false, millerRabin.isPrime(561))
assert.equal(false, millerRabin.isPrime(1105))
assert.equal(false, millerRabin.isPrime(1729))
assert.equal(false, millerRabin.isPrime(2465))
assert.equal(false, millerRabin.isPrime(2821))
assert.equal(false, millerRabin.isPrime(6601))
assert.equal(false, millerRabin.isPrime(8911))
