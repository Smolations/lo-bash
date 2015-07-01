
# later can expand to take an argument of things to slash
# also to take piped input..

function _._slash {
  sed 's/"/\\"/g' <<< "$@"
}
