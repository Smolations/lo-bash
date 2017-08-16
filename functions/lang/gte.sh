## /* @function
 #  @usage _.gte <value> <other>
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
 #  perl
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
  local perlRes=

  if _.isNumber $1 && _.isNumber $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    _._awkCompare "$1 >= $2" && turn=0
  else
    # use perl here as it behaves the same in bash 3/4
    # when comparing strings
    perlRes=$(perl -e "print '$1' cmp '$2'")
    [[ "$perlRes" == "0" || "$perlRes" == "1" ]] && turn=0
  fi

  return $turn
}

