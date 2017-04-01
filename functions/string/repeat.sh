## /* @function
 #  @usage _.repeat [-n] <string> <num>
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
 #  _.repeat "*" 3
 #  > ***
 #
 #  _.repeat "abc" 2
 #  > abcabc
 #
 #  _.repeat "abc" 0
 #  >
 #  examples@
 #
 #  @dependencies
 #  `egrep`
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

function _.repeat {
  [ $# -gt 3 -o $# -lt 2 ] && return 1

  local turn=0 str mult out i eOpt=

  if [ $# == 3 ]; then
    if [ "$1" == '-n' ]; then
      eOpt='-n' && shift
    else
      return 4
    fi
  fi

  str=$1 mult=$2

  [ "$mult" = "" ] && mult=0

  ! egrep -q '^[0-9]+$' <<< $mult && return 2

  if [ $mult -gt 0 ]; then
    for i in $( seq $mult ); do out="${out}${str}"; done
  fi

  echo $eOpt "$out"

  return $turn
}
