## /* @function
 #  @usage _.gt <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is greater than or equal to <other>.
 #  description@
 #
 #  @examples
 #  $ _.gte 4 3 && echo "yup"
 #  > yup
 #  $ _.gte 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  function/_/_awkCompare.sh
 #  function/lang/isNumber.sh
 #  dependencies@
 #
 #  @returns
 #  0 - value >= other
 #  1 - value < other
 #  returns@
 #
 #  @file functions/lang/gte.sh
 ## */

function _.gte {
  declare -i turn=1

  if _.isNumber $1 && _.isNumber $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    _._awkCompare "$1 >= $2" && turn=0
  else
    [[ "$1" > "$2" ]] || [[ "$1" == "$2" ]] && turn=0
  fi

  return $turn
}

