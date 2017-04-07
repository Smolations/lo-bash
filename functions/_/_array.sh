## /* @function
 #  @usage _._array <arrayName> [<val1>[ <val2>[ ...]]]
 #
 #  @output false
 #
 #  @exports
 #  $<arrayName>
 #  exports@
 #
 #  @description
 #  Creates a variable that holds an array of arbitrary values.
 #  description@
 #
 #  @examples
 #  $ _._array myArray 1 2 3
 #  $ echo ${myArray[1]}
 #  > 2
 #  $ _._array myArray 'i' 'have several' 'elements'
 #  $ echo ${myArray[2]}
 #  > elements
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  functions/_/_slash.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - no arguments given
 #  returns@
 #
 #  @file functions/_/_array.sh
 ## */

function _._array {
  local turn=1

  if [[ $# > 0 ]]; then
    local arr_name=$1 array_string='' num
    shift

    num=$#
    for (( i = 0; i < num; i++)); do
      array_string+=" [${i}]=\"`_._slash "${1}"`\"" && shift
    done

    eval "${arr_name}=(${array_string} )" && turn=$?
    export $arr_name
  fi

  return $turn
}
