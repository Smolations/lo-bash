## /* @function
 #  @usage _gt <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is greater than <other>.
 #  description@
 #
 #  @examples
 #  $ _gt 4 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  `perl`
 #  lb_awkCompare
 #  _isNumber
 #  dependencies@
 #
 #  @returns
 #  0 - value > other
 #  1 - value <= other
 #  returns@
 #
 #  @file functions/lang/gt.sh
 ## */

function _gt {
  declare -i turn=1

  if _isNumber $1 && _isNumber $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    lb_awkCompare "$1 > $2" && turn=0
  else
    # use perl here as it behaves the same in bash 3/4
    # when comparing strings
    perlRes=$(perl -e "print '$1' cmp '$2'")
    [[ "$perlRes" == "1" ]] && turn=0
  fi

  return $turn
}
