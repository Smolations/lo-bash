
# _.times(n, [iteratee=_.identity], [thisArg])

# Invokes the iteratee function n times, returning an array of the results of each invocation. The iteratee is bound to thisArg and invoked with one argument; (index).

# Arguments
# n (number): The number of times to invoke iteratee.
# [iteratee=_.identity] (Function): The function invoked per iteration.
# [thisArg] (*): The this binding of iteratee.
# Returns
# (Array): Returns the array of results.

# Example
# var diceRolls = _.times(3, _.partial(_.random, 1, 6, false));
# // → [3, 6, 4]

# _.times(3, function(n) {
#   mage.castSpell(n);
# });
# // → invokes `mage.castSpell(n)` three times with `n` of `0`, `1`, and `2`

# _.times(3, function(n) {
#   this.cast(n);
# }, mage);
# // → also invokes `mage.castSpell(n)` three times

function _.times {
  local turn=0

  return $turn
}
