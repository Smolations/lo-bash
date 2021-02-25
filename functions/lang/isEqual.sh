## /* @function
 #  @usage lo::isEqual <val1> <val2>
 #
 #  @output false
 #
 #  @description
 #  Compares to values to determine if they are equal in Bash-land.
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  - Supports floating point numbers as they are passed to `awk`.
 #  notes@
 #
 #  @examples
 #  $ lo::isEqual 2 2 && echo 'yup'
 #  > yup
 #  $ lo::isEqual 'hey' 'hey' && echo 'yup'
 #  > yup
 #  $ lo::isEqual 'hey' 'heyo' || echo 'aww'
 #  > aww
 #  examples@
 #
 #  @dependencies
 #  lb_awkCompare
 #  lo::isNumber
 #  dependencies@
 #
 #  @returns
 #  0 - two values are considered equal
 #  1 - two values are NOT considered equal
 #  returns@
 #
 #  @file functions/lang/isEqual.sh
 ## */

function lo::isEqual {
  declare -i turn=1

  if lo::isNumber $1 && lo::isNumber $2; then
    lb_awkCompare "$1 == $2" && turn=0
  else
    [[ "$1" == "$2" ]] && turn=0
  fi

  return $turn
}

