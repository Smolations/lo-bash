
# _.sum(collection, [iteratee], [thisArg])

# Gets the sum of the values in collection.

# Arguments
# collection (Array|Object|string): The collection to iterate over.
# [iteratee] (Function|Object|string): The function invoked per iteration.
# [thisArg] (*): The this binding of iteratee.
# Returns
# (number): Returns the sum.

# Example
# _.sum([4, 6]);
# // → 10

# _.sum({ 'a': 4, 'b': 6 });
# // → 10

# var objects = [
#   { 'n': 4 },
#   { 'n': 6 }
# ];

# _.sum(objects, function(object) {
#   return object.n;
# });
# // → 10

# // using the `_.property` callback shorthand
# _.sum(objects, 'n');
# // → 10

function _.sum {
  local sum=0 args=($@) item
  for (( i = 0; i < ${#args[@]}; i++ )); do
    item=${args[$i]}; (( sum += item ))
  done
  echo $sum
}

