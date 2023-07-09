## /* @function
 #  @usage _isNumber <value>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a number. Basically, if a pattern match
 #  results in a "Bash" number.
 #  description@
 #
 #  @examples
 #  _isNumber .4       # true
 #  _isNumber 4.       # true
 #  _isNumber 4        # true
 #  _isNumber -5       # true
 #  _isNumber +5       # true
 #  _isNumber 7.312    # true
 #  _isNumber '65'     # true
 #  _isNumber 7.3.12   # false
 #  _isNumber 'a'      # false
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - <value> is a number
 #  1 - <value> is NOT a number
 #  returns@
 #
 #  @file functions/lang/isNumber.sh
 ## */

function _isNumber {
  declare -i turn=0

  case ${1#[-+]} in
    ''|*[!0-9.]*| *.*.*) turn=1 ;;
  esac

  return $turn
}

