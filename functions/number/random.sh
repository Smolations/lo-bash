## /* @function
 #  @usage _.random [<lower=0>] [<upper=100>]
 #
 #  @output true
 #
 #  @description
 #  Produces a random number between the inclusive lower and upper bounds.
 #  If only one argument is provided a number between 0 and the given number
 #  is returned. Only integers supported.
 #  description@
 #
 #  @examples
 #  $ _.random
 #  > 32
 #  examples@
 #
 #  @dependencies
 #  `$RANDOM`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - provided <lower> is greater than <upper>
 #  returns@
 #
 #  @file functions/number/random.sh
 ## */

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

