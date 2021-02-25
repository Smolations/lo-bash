## /* @function
 #  @usage lo::inRange <number> <start=0> <end>
 #
 #  @output true
 #
 #  @description
 #  Checks if <number> is between <start> and up to, but not including, <end>.
 #  If <end> is not specified, it's set to <start> with <start> then set to 0. If
 #  <start> is greater than <end> the params are swapped to support negative ranges.
 #  description@
 #
 #  @notes
 #  - does not currently validate that arguments are numbers
 #  - only works with integers
 #  notes@
 #
 #  @examples
 #  $ lo::inRange 5 10    # true
 #  $ lo::inRange 5 4 10  # true
 #  $ lo::inRange 15 10   # false
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - less than two arguments supplied
 #  returns@
 #
 #  @file functions/number/inRange.sh
 ## */

function lo::inRange {
  declare -i turn=0
  declare -i arg_count=$#
  declare -i from=0
  declare -i to
  declare -i needle

  if (( arg_count < 2 )); then
    turn=1
  else
    needle=$1
    (( arg_count == 2 )) && to=$2
    (( arg_count == 3 )) && from=$2 to=$3

    (( needle > from && needle < to )); turn=$?
  fi

  return $turn
}
