## /* @function
 #  @usage _::lang::gte <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is greater than or equal to <other>.
 #  description@
 #
 #  @examples
 #  $ _::lang::gte 4 3 && echo "yup"
 #  > yup
 #  $ _::lang::gte 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  `perl`
 #  lb_awkCompare
 #  _::is_number
 #  dependencies@
 #
 #  @returns
 #  0 - value >= other
 #  1 - value < other
 #  returns@
 #
 #  @file functions/lang/gte.sh
 ## */

function _::lang::gte() {
  declare -i turn=1
  local perlRes=

  if _::lang::is_number $1 && _::lang::is_number $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    lb_awkCompare "$1 >= $2" && turn=0
  else
    # use perl here as it behaves the same in bash 3/4
    # when comparing strings
    perlRes=$(perl -e "print '$1' cmp '$2'")
    [[ "$perlRes" == "0" || "$perlRes" == "1" ]] && turn=0
  fi

  return $turn
}

