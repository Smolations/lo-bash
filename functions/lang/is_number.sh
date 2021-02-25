## /* @function
 #  @usage _::is_number <value>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a number. Basically, if a pattern match
 #  results in a "Bash" number.
 #  description@
 #
 #  @examples
 #  _::is_number .4       # true
 #  _::is_number 4.       # true
 #  _::is_number 4        # true
 #  _::is_number -5       # true
 #  _::is_number +5       # true
 #  _::is_number 7.312    # true
 #  _::is_number '65'     # true
 #  _::is_number 7.3.12   # false
 #  _::is_number 'a'      # false
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

function _::is_number() {
  declare -i turn=0

  case ${1#[-+]} in
    ''|*[!0-9.]*| *.*.*) turn=1 ;;
  esac

  return $turn
}

