## /* @function
 #  @usage _.padStart <string=""> <length=0> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Pads string on the left side if it’s shorter than <length>. Padding
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
 #  - Try to avoid any <char>'s which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ _.padStart "abc"
 #  >    abc
 #
 #  $ _.padStart "abc" 6 "_-"
 #  > _-_abc
 #
 #  $ _.padStart "abc"
 #  > abc
 #  examples@
 #
 #  @dependencies
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
 #  @file functions/string/padStart.sh
 ##

function _.padStart {
  local turn=0

  local str="$1" len=$2 chars="$3"
  local avail_for_pad chars_len pad_freq prefix str_len

  [ -z "$len" ] && len=0
  [ -z "$chars" ] && chars=' '

  chars_len=`_.length "$chars"`
  str_len=`_.length "$str"`

  ! egrep --quiet '^[0-9]+$' <<< "$len" && return 1

  if [ $str_len -lt $len ]; then
    avail_for_pad=`expr $len - $str_len`
    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    prefix=`_.repeat "$chars" $pad_freq`
    prefix="${prefix:0:${avail_for_pad}}"
  fi

  echo "${prefix}${str}"
  # ind=$( IFS=$'\n'; _.repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

  return $turn
}
