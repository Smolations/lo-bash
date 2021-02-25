## /* @function
 #  @usage _::lang::is_equal <val1> <val2>
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
 #  $ _::lang::is_equal 2 2 && echo 'yup'
 #  > yup
 #  $ _::lang::is_equal 'hey' 'hey' && echo 'yup'
 #  > yup
 #  $ _::lang::is_equal 'hey' 'heyo' || echo 'aww'
 #  > aww
 #  examples@
 #
 #  @dependencies
 #  lb_awkCompare
 #  _::is_number
 #  dependencies@
 #
 #  @returns
 #  0 - two values are considered equal
 #  1 - two values are NOT considered equal
 #  returns@
 #
 #  @file functions/lang/isEqual.sh
 ## */

function _::lang::is_equal() {
  declare -i turn=1

  if _::lang::is_number $1 && _::lang::is_number $2; then
    lb_awkCompare "$1 == $2" && turn=0
  else
    [[ "$1" == "$2" ]] && turn=0
  fi

  return $turn
}

