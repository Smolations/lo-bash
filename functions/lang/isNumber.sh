## /* @function
 #  @usage _.isNumber <value>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a number. Basically, if a pattern match
 #  results in a "Bash" number.
 #  description@
 #
 #  @examples
 #  _.isNumber .4       # true
 #  _.isNumber 4.       # true
 #  _.isNumber 4        # true
 #  _.isNumber -5       # true
 #  _.isNumber +5       # true
 #  _.isNumber 7.312    # true
 #  _.isNumber '65'     # true
 #  _.isNumber 7.3.12   # false
 #  _.isNumber 'a'      # false
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

function _.isNumber {
  declare -i turn=0

  case ${1#[-+]} in
    ''|*[!0-9.]*| *.*.*) turn=1 ;;
  esac

  return $turn
}

