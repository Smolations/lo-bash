## /* @function
 #  @usage _repeat [-n] <string> <num>
 #
 #  @output true
 #
 #  @description
 #  In cases where you need a small number of characters repeated a certain number
 #  of times, this function will solve your problem. It will send the <string>
 #  repeated <num> times to STDOUT. By default, num=0.
 #  description@
 #
 #  @options
 #  -n      Omit trailing newline from output (like `echo -n`).
 #  options@
 #
 #  @examples
 #  _repeat "*" 3
 #  > ***
 #
 #  _repeat "abc" 2
 #  > abcabc
 #
 #  _repeat "abc" 0
 #  >
 #  examples@
 #
 #  @dependencies
 #  `egrep -E`
 #  `seq`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - missing or excessive arguments
 #  2 - value passed for <num> is not a number
 #  4 - there were 3 args passed, but the first was not "-n".
 #  returns@
 #
 #  @file functions/string/repeat.sh
 ## */

function _repeat {
  declare -i turn=0
  declare -i mult
  declare -i i
  local str out eOpt=

  (( $# > 3 || $# < 2 )) && return 1

  if (( $# == 3 )); then
    if [[ "$1" == '-n' ]]; then
      eOpt='-n' && shift
    else
      return 4
    fi
  fi

  str=$1 mult=${2-0}

  if (( mult > 0 )); then
    for i in $( seq $mult ); do out+="${str}"; done
  fi

  echo $eOpt "$out"

  return $turn
}
