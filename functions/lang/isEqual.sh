## /* @function
 #  @usage _.isEqual <val1> <val2>
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
 #  $ _.isEqual 2 2 && echo 'yup'
 #  > yup
 #  $ _.isEqual 'hey' 'hey' && echo 'yup'
 #  > yup
 #  $ _.isEqual 'hey' 'heyo' || echo 'aww'
 #  > aww
 #  examples@
 #
 #  @dependencies
 #  functions/_/_awkCompare.sh
 #  functions/lang/isNumber.sh
 #  dependencies@
 #
 #  @returns
 #  0 - two values are considered equal
 #  1 - two values are NOT considered equal
 #  returns@
 #
 #  @file functions/lang/isEqual.sh
 ## */

function _.isEqual {
  declare -i turn=1

  if _.isNumber $1 && _.isNumber $2; then
    _._awkCompare "$1 == $2" && turn=0
  else
    [[ "$1" == "$2" ]] && turn=0
  fi

  return $turn
}

