## /* @function
 #  @usage _source_all [-vx] [<path>]
 #
 #  @output true (for -v)
 #
 #  @description
 #  This function will source all files in the given <path>, bringing any
 #  exported variables into the calling context. Given folders are searched
 #  recursively. If no <path> is provided, the current directory is sourced.
 #  Because of this, be very intentional about how you use this function.
 #  description@
 #
 #  @options
 #  -r      Find files recursively for the given path.
 #  -x      If the sourced files contains a single function, export each function.
 #  -v      Output number of functions/files exported (e.g. "3 functions exported").
 #  options@
 #
 #  @notes
 #  - The given <path> can be handled whether it ends with a slash (/) or not.
 #  - The given <path> can be relative to the current directory or absolute.
 #  notes@
 #
 #  @examples
 #  __source_all "/some/path/to/folder"
 #  examples@
 #
 #  @returns
 #  0 - successful execution
 #  1 - given <path> is not a directory
 #  returns@
 #
 #  @file functions/utility/sourceAll.sh
 ## */

function _sourceAll {
  (( $# == 0 )) && return 1
  args=($@)

  let "last = $# - 1"
  local turn=0 sCount=0 xCount=0 showCount= exportFuncs= recurse=
  local grepped fName arg sPath="${args[$last]}"

  # parse arguments
  flags=()
  egrep -q '(^| )-v ' <<< "$@" && showCount=true #&& flags+=('-v')
  egrep -q '(^| )-x ' <<< "$@" && exportFuncs=true && flags+=('-x')
  egrep -q '(^| )-r ' <<< "$@" && recurse=true && flags+=('-r')

  # sPath="${_args_clipped[@]}"
  [[ -z "$sPath" ]] && arg=$( pwd ) || arg="${sPath%/}"
  # echo "$showCount | $exportFuncs | $arg | ${flags[@]}"
  # echo "$arg"

  # validate directory and start sourcing
  if [[ -d "$arg" ]]; then
    for file in "${arg}/"*; do

      if [[ -d "$file" ]]; then
        if [[ $recurse ]]; then
          export sCount
          _sourceAll ${flags[@]} "$file"
        fi

      elif [[ -s "$file" ]]; then
        # echo "Going to source: ${file}"
        # DO NOT LEAVE THIS HERE. try _executeAll
        [[ "${file%%/*}" == "test" ]] && ./"$file" || source "$file"

        # (( sCount++ )) && source "$file"
        # source "$file"
        (( sCount++ ))

        if [[ $exportFuncs ]]; then
          grepped=` grep '^function' "$file" `
          # echo "grepped = $grepped"

          if [[ -n "$grepped" ]]; then
            fName="${grepped#* }"
            fName="${fName% *}"
            fName="${fName%(*}"
            # echo "fName = $fName"

            # supported characters for bash function names
            f_type=$( type -t "$fName" 2>/dev/null )
            if egrep -qi '^[-_.a-z0-9]+$' <<< "$fName" && [[ "$f_type" == 'function' ]]; then
              eval export -f $fName
              (( xCount++ ))
            fi
          fi
        fi
      fi

    done

  else
    turn=1
  fi

  # [[ $showCount ]] && echo "${sCount} files sourced" && echo "${xCount} functions exported"
  unset xCount sCount

  return $turn
}
