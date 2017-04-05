## /* @function
 #  @usage _.inRange <number> <start=0> <end>
 #
 #  @output true
 #
 #  @exports
 #  exports@
 #
 #  @description
 #  Checks if <number> is between <start> and up to, but not including, <end>.
 #  If <end> is not specified, it's set to <start> with <start> then set to 0. If
 #  <start> is greater than <end> the params are swapped to support negative ranges.
 #  description@
 #
 #  @notes
 #  - does not currently validate that arguments are numbers
 #  notes@
 #
 #  @examples
 #  $ _.inRange 5 10    # true
 #  $ _.inRange 5 4 10  # true
 #  $ _.inRange 15 10   # false
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

function _.inRange {
  local turn=0 arg_count=$# from=0 to needle

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
