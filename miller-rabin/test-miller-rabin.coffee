# Test Miller-Rabin
assert = require 'assert'
millerRabin = require './miller-rabin'

########################
# Test Suite: checkMod #
########################
# Test Case: negative
assert.equal(-1, millerRabin.checkMod(1, 2))
assert.equal(-1, millerRabin.checkMod(876, 877))
assert.equal(-3, millerRabin.checkMod(876, 879))

# Test Case: positive
assert.equal(1, millerRabin.checkMod(3, 2))
assert.equal(4, millerRabin.checkMod(9, 5))
assert.equal(1, millerRabin.checkMod(100, 9))


#######################
# Test Suite: isPrime #
#######################
# # Test Case: base
# assert.equal(true, millerRabin.isPrime(1))
# assert.equal(true, millerRabin.isPrime(2))
# assert.equal(true, millerRabin.isPrime(3))

# # Test Case: even
# assert.equal(false, millerRabin.isPrime(4))
# assert.equal(false, millerRabin.isPrime(40))
# assert.equal(false, millerRabin.isPrime(400))

# # Test Case: prime
# assert.equal(true, millerRabin.isPrime(17))
# console.log millerRabin.isPrime(877)
# assert.equal(true, millerRabin.isPrime(877))
# assert.equal(true, millerRabin.isPrime(2131))

# # Test Case: composite (carmichaels)
# assert.equal(false, millerRabin.isPrime(561))
# assert.equal(false, millerRabin.isPrime(1105))
# assert.equal(false, millerRabin.isPrime(1729))
# assert.equal(false, millerRabin.isPrime(2465))
# assert.equal(false, millerRabin.isPrime(2821))
# assert.equal(false, millerRabin.isPrime(6601))
# assert.equal(false, millerRabin.isPrime(8911))
