## /* @function
 #  @usage lb_array <arrayName> [<val1>[ <val2>[ ...]]]
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
 #  $ lb_array myArray 1 2 3
 #  $ echo ${myArray[1]}
 #  > 2
 #  $ lb_array myArray 'i' 'have several' 'elements'
 #  $ echo ${myArray[2]}
 #  > elements
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  lb_slash
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - no arguments given
 #  returns@
 #
 #  @file functions/_/lb_array.sh
 ## */

function lb_array {
  declare -i turn=1
  declare -i num
  local arr_name=$1 arr_string=""

  if (( $# > 0 )); then
    shift

    num=$#
    for (( i = 0; i < num; i++)); do
      arr_string+=" [${i}]=\"`lb_slash "${1}"`\"" && shift
    done

    eval "${arr_name}=(${arr_string} )" && turn=$?
    export $arr_name
  fi

  return $turn
}
