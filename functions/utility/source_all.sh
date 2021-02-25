## /* @function
 #  @usage _::source_all [-r] [-x] [<path>]
 #
 #  @output false (unless sourced files use STDOUT)
 #
 #  @description
 #  This function will source all files in the given <path>, bringing any
 #  exported variables into the calling context. Given folders can be searched
 #  recursively. If no <path> is provided, the current directory is sourced.
 #  Because of this, be very intentional about how you use this function.
 #  description@
 #
 #  @options
 #  -r      Find files recursively for the given path.
 #  -x      If the sourced files contains a single function, export each function.
 #  options@
 #
 #  @notes
 #  - The given <path> can be handled whether it ends with a slash (/) or not.
 #  - The given <path> can be relative to the current directory or absolute.
 #  notes@
 #
 #  @examples
 #  _::source_all "/some/path/to/folder"
 #  _::source_all -x "/some/path/to/folder/of/functions"
 #  _::source_all    # sources pwd
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  `eval`
 #  `type`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - given <path> is not a directory
 #  returns@
 #
 #  @file functions/utility/sourceAll.sh
 ## */

function _::source_all() {
  (( $# == 0 )) && return 1
  args=($@)

  let "last = $# - 1"
  local turn=0 source_count=0 export_count=0
  local export_funcs= recurse=
  local grepped fn_name arg source_path="${args[$last]}"
  local fn_regex='^\s*((function [A-Za-z0-9_-]*)|([A-Za-z0-9_-]* *\(\)))'

  # parse arguments
  flags=()
  egrep -q '(^| )-x ' <<< "$@" && export_funcs=true && flags+=('-x')
  egrep -q '(^| )-r ' <<< "$@" && recurse=true && flags+=('-r')

  [[ -z "$source_path" ]] && arg=$( pwd ) || arg="${source_path%/}"
  # echo "$export_funcs | $arg | ${flags[@]}"

  # validate directory and start sourcing
  if [[ -d "${arg}" ]]; then
    for file in "${arg}/"*; do

      if [[ -d "${file}" ]]; then
        if [[ $recurse ]]; then
          export source_count
          _::source_all ${flags[@]} "${file}"
        fi

      elif [[ -s "${file}" ]]; then
        # echo "Going to source: ${file}"
        source "${file}"
        (( source_count++ ))

        if [[ $export_funcs ]]; then
          # echo 'grepping fn_regex'
          fn_name=$( egrep "${fn_regex}" "${file}" \
            | sed 's/^[^A-Za-z0-9_-]*//;s/^function //;s/\([A-Za-z0-9_-]*\).*/\1/g' )
          # echo "fn_name = [${fn_name}]"

          if [[ -n "${fn_name}" ]]; then
            # supported characters for bash function names
            f_type=$( type -t "${fn_name}" 2>/dev/null )
            if egrep -qi '^[-_.a-z0-9]+$' <<< "${fn_name}" && [[ "${f_type}" == 'function' ]]; then
              eval export -f $fn_name
              (( export_count++ ))
            fi
          fi
        fi
      fi

    done

  else
    turn=1
  fi

  unset export_count source_count

  return $turn
}
