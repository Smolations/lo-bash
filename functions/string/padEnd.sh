## /* @function
 #  @usage _.padEnd <string=""> <length=0> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Pads string on the right side if it’s shorter than <length>. Padding
 #  characters (<chars>) are truncated if they exceed <length>.
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  - Note that <chars> doesn't have to be a single character.
 #  - You may have noticed that `printf` is quite capable of doing a job like
 #  this. It still poses the problem of having spaces (or a common variable)
 #  in the `printf` string.
 #  - Try to avoid any <chars> which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ echo "'`_.padEnd "abc" 6`'"
 #  > 'abc   '
 #
 #  $ _.padEnd "abc" 6 "_-"
 #  > abc_-_
 #
 #  $ _.padEnd "abc" 3
 #  > abc
 #  examples@
 #
 #  @dependencies
 #  `cut`
 #  `egrep`
 #  `expr`
 #  functions/string/length.sh
 #  functions/string/repeat.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - an invalid <length> was passed (it wasn't recognized as a number)
 #  returns@
 #
 #  @file functions/string/padEnd.sh
 ##

function _.padEnd {
  local turn=0

  local str="$1" len=$2 chars="$3"
  local avail_for_pad chars_len pad_freq str_len suffix

  [[ -z "$len" ]] && len=0
  [[ -z "$chars" ]] && chars=' '

  chars_len=`_.length "$chars"`
  str_len=`_.length "$str"`

  ! egrep --quiet '^[0-9]+$' <<< "$len" && return 1

  if [[ $str_len < $len ]]; then
    avail_for_pad=`expr $len  - $str_len`
    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    suffix=`_.repeat "$chars" $pad_freq`
    suffix="${suffix:0:${avail_for_pad}}"
  fi

  echo "${str}${suffix}"
  # ind=$( IFS=$'\n'; _.repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

  return $turn
}
