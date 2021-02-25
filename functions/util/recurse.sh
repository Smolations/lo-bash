## /* @function
 #  @usage _::util::recurse [<path=".">] <funcName>
 #
 #  @output false
 #
 #  @description
 #  This function will recurse all files in the given <path>, and will pass
 #  each path/file name to the given <funcName> callback.
 #  description@
 #
 #  @notes
 #  - The given <path> can be handled whether it ends with a slash (/) or not.
 #  - The given <path> can be relative to the current directory or absolute.
 #  notes@
 #
 #  @examples
 #  function doSomething {
 #    local folderPath="$1" fileName="$2"
 #    local fullPath="${folderPath}/${fileName}"
 #    # do something with $fullPath
 #  }
 #  _::util::recurse "/some/path/to/folder" doSomething
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  _::is_function
 #  @dependencies
 #
 #  @returns
 #  0 - successful execution
 #  1 - no arguments given
 #  2 - given <funcName> is not a function
 #  4 - given <path> is not a directory
 #  returns@
 #
 #  @file functions/utility/recurse.sh
 ## */

function _::util::recurse() {
  declare -i turn=0
  local fName="$2" sPath="${1%/}"

  (( $# == 0 )) && return 1

  if [[ "$fName" == "" ]]; then
    fName="$sPath"
    sPath=`pwd`
  fi

  if ! _::lang::is_function "$fName"; then
    return 2
  fi

  # validate directory and start sourcing
  if [[ -d "$sPath" ]]; then
    for file in "${sPath}/"*; do

      if [[ -d "$file" ]]; then
        _::util::recurse "$file" $fName

      elif [[ -s "$file" ]]; then
        # pass directory path and file name
        eval $fName "${file%/*}" "${file##*/}"
      fi

    done

  else
    turn=4
  fi

  return $turn
}
