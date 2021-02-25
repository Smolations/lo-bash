## /* @function
 #  @usage _::math::sum <val1>[, <val2>[, ...]]
 #
 #  @output true
 #
 #  @description
 #  Gets the sum of a given set of values.
 #  description@
 #
 #  @examples
 #  $ sum=(1 1 1 1 1)
 #  $ _::math::sum ${sum[@]}
 #  > 5
 #  $ sum='2 2 2 2'
 #  $ _::math::sum $sum
 #  > 8
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/math/sum.sh
 ## */

function _::math::sum() {
  declare -i turn=0
  declare -i summ=0
  local args=($@) item

  for (( i = 0; i < ${#args[@]}; i++ )); do
    item=${args[$i]}
    (( summ += item ))
  done

  echo $summ

  return $turn
}

