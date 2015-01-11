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
