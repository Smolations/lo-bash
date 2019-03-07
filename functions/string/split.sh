## /* @function
 #  @usage _split <string> <separator> <arrayName>
 #
 #  @output false
 #
 #  @exports
 #  $<arrayName>
 #  exports@
 #
 #  @description
 #  Splits <string> by <separator> and creates an array named <arrayName>.
 #  description@
 #
 #  @notes
 #  - Be careful when splitting on regular expression characters. *Should*
 #  be fine, but just sayin.
 #  - Regular expressions themselves are not evaluated for <separator>. Literal
 #  strings only.
 #  notes@
 #
 #  @examples
 #  $ str="what's up guys?"
 #  $ _split "$str" " " splitArray
 #  $ echo "${#splitArray[@]}"
 #  > 3
 #  $ echo "${splitArray[2]}"
 #  > guys?
 #  $ _split "$str" " up " splitArray
 #  $ echo "${#splitArray[@]}"
 #  > 2
 #  $ echo "${splitArray[0]}"
 #  > what's
 #  examples@
 #
 #  @dependencies
 #  lb_array
 #  lb_awkPrint
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - no <separator> given
 #  2 - no <arrayName> given
 #  returns@
 #
 #  @file functions/string/split.sh
 ## */

function _split {
  declare -i turn=0
  declare -i sepEnd
  declare -i sepIndex
  declare -i sepStart
  local tmpStr="$1" sep="$2" arrayName="$3" arr=() el tmpStr

  [[ -z "$sep" ]] && turn=1
  [[ -z "$arrayName" ]] && turn=2

  if [[ $turn == 0 ]]; then
    sepIndex=`lb_awkPrint "index(\"$tmpStr\", \"$sep\")"`

    if (( sepIndex > 0 )); then
      while (( sepIndex > 0 )); do
        let "sepStart = ${sepIndex} - 1"
        let "sepEnd = ${sepStart} + ${#sep}"
        el="${tmpStr:0:${sepStart}}"
        tmpStr="${tmpStr:${sepEnd}}"
        arr+=("$el")
        sepIndex=`lb_awkPrint "index(\"$tmpStr\", \"$sep\")"`
      done
      arr+=("$tmpStr")
    else
      arr+=("$tmpStr")
    fi

    lb_array $arrayName "${arr[@]}"
  fi

  return $turn
}
