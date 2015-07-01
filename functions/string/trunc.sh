
# _.trunc([string=''], [options], [options.length=30], [options.omission='…'], [options.separator])

# Truncates string if it’s longer than the given maximum string length. The last characters of the truncated string are replaced with the omission string which defaults to "…".

# Arguments
# [string=''] (string): The string to truncate.
# [options] (Object|number): The options object or maximum string length.
# [options.length=30] (number): The maximum string length.
# [options.omission='…'] (string): The string to indicate text is omitted.
# [options.separator] (RegExp|string): The separator pattern to truncate to.
# Returns
# (string): Returns the truncated string.


# _.trunc('hi-diddly-ho there, neighborino');
# // → 'hi-diddly-ho there, neighbo…'

# _.trunc('hi-diddly-ho there, neighborino', 24);
# // → 'hi-diddly-ho there, n…'

# _.trunc('hi-diddly-ho there, neighborino', {
#   'length': 24,
#   'separator': ' '
# });
# // → 'hi-diddly-ho there,…'

# _.trunc('hi-diddly-ho there, neighborino', {
#   'length': 24,
#   'separator': /,? +/
# });
# // → 'hi-diddly-ho there…'

# _.trunc('hi-diddly-ho there, neighborino', {
#   'omission': ' […]'
# });
# // → 'hi-diddly-ho there, neig […]'


function _.trunc {
  local turn=0 str=$1 len=$2 omission=$3 sep=$4



  return $turn
}
