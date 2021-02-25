## /* @function
 #  @usage _::util::tree [<path>]
 #
 #  @output true
 #
 #  @description
 #  Show a file tree using indents and colors. This function will recursively list
 #  the contents of a given directory.
 #  description@
 #
 #  @notes
 #  - Dot folders are ignored by default.
 #  notes@
 #
 #  @examples
 #  $ _::util::tree ~/Documents
 #  examples@
 #
 #  @dependencies
 #  `grep`
 #  dependencies@
 #
 #  @returns
 #  0 - function executes successfully
 #  1 - if provided argument is not a directory
 #  returns@
 #
 #  @file functions/utility/tree.sh
 ## */

function _::util::tree() {
  local path="${@%/}" indent filePre folderPre

  [[ -z "$path" ]] && path=`pwd`

  [[ ! -d "$path" ]] && return 1

  indent="$indent    "
  filePre=""
  folderPre=""

  if [[ ! $inRecurse ]]; then
    echo "${COL_YELLOW}$(cd "$path"; pwd)${X}"
  fi

  for entry in `ls "$path"`; do
    if [[ -d "${path}/${entry}" ]]; then
      export inRecurse=true
      grep -q '^\.' <<< "$entry" && continue
      echo "${indent}${folderPre}${COL_YELLOW}${entry}${X}"
      _::util::tree "${path}/${entry}"

    else
      echo "${indent}${filePre}${entry}"
    fi
  done

  unset inRecurse

  return 0
}
