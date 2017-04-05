## /* @function
 #  @usage _.
 #
 #  @output true
 #
 #  @exports
 #  exports@
 #
 #  @description
 #
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  _.
 #  examples@
 #
 #  @dependencies
 #  ``
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 -
 #  returns@
 #
 #  @file functions//.sh
 ## */
# differences:
#   does not return floating point, so no third arg and default max = 100
function _.random {
  local arg_count=$# turn=0 number=0 min=0 max=100

  (( arg_count == 1 )) && max=$1
  (( arg_count == 2 )) && min=$1 max=$2

  if (( min > max )); then
    turn=1
  else
    while (( number < min )); do
      number=$RANDOM let "number %= $max"
    done

    echo $number
  fi

  return $turn
}

