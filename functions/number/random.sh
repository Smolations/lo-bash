## /* @function
 #  @usage lo::random [<lower=0>] [<upper=100>]
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
 #  $ lo::random
 #  > 32
 #  examples@
 #
 #  @dependencies
 #  `$RANDOM`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - provided <lower> is greater than or equal to <upper>
 #  returns@
 #
 #  @file functions/number/random.sh
 ## */

function lo::random {
  declare -i turn=0
  declare -i min=0
  declare -i max=100
  declare -i number=$RANDOM

  (( $# == 1 )) && max=$1
  (( $# == 2 )) && min=$1 max=$2

  if (( min >= max )); then
    turn=1

  else
    while (( number < min || number > max )); do
      let "number = $RANDOM % $max"
    done

    echo $number
  fi

  return $turn
}
