
# _.max(collection, [iteratee], [thisArg])

# Gets the maximum value of collection. If collection is empty or falsey -Infinity is returned. If an iteratee function is provided it is invoked for each value in collection to generate the criterion by which the value is ranked. The iteratee is bound to thisArg and invoked with three arguments: (value, index, collection).

# If a property name is provided for iteratee the created _.property style callback returns the property value of the given element.

# If a value is also provided for thisArg the created _.matchesProperty style callback returns true for elements that have a matching property value, else false.

# If an object is provided for iteratee the created _.matches style callback returns true for elements that have the properties of the given object, else false.

# Arguments
# collection (Array|Object|string): The collection to iterate over.
# [iteratee] (Function|Object|string): The function invoked per iteration.
# [thisArg] (*): The this binding of iteratee.
# Returns
# (*): Returns the maximum value.

# Example
# _.max([4, 2, 8, 6]);
# // → 8

# _.max([]);
# // → -Infinity

# var users = [
#   { 'user': 'barney', 'age': 36 },
#   { 'user': 'fred',   'age': 40 }
# ];

# _.max(users, function(chr) {
#   return chr.age;
# });
# // → { 'user': 'fred', 'age': 40 }

# // using the `_.property` callback shorthand
# _.max(users, 'age');
# // → { 'user': 'fred', 'age': 40 }

function _.max {
  local turn=0 args=`tr ' ' "\n" <<< "$@"`
  sort -g <<< "$args" | tail -n1
  # return 0
}

