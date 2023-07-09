## /* @function
 #  @usage _times <num> <funcName> [<arrayName>]
 #
 #  @output false
 #
 #  @description
 #  Invokes the <funcName> <num> times, optionally returning an <arrayName> of the
 #  results of each invocation. The <funcName> is invoked with one argument; (index).
 #  description@
 #
 #  @examples
 #  $ function foo { echo -n "$1"; }
 #  $ _times 4 foo
 #  > 0123
 #  $ _times 4 foo newArray
 #  $ echo ${newArray[1]}
 #  > 1
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  _isFunction
 #  lb_arrayCopy
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - given <funcName> is not a recognized function
 #  2 - error exporting <arrayName>
 #  returns@
 #
 #  @file functions/utility/times.sh
 ## */

function _times {
  declare -i turn=0
  declare -i num=${1-0}
  local funcName="$2" arrayName="$3" arr=()

  if ! _isFunction "$funcName"; then
    turn=1

  else
    for (( i = 0; i < num; i++ )); do
      if [[ -n "$arrayName" ]]; then
        arr+=( `eval "$funcName $i"` )
      else
        eval "$funcName $i"
      fi
    done

    if [[ -n "$arrayName" ]]; then
      lb_arrayCopy $arrayName arr || turn=2
    fi
  fi

  return $turn
}
