

function newfunc {
  uri="$1"
  group="${uri%/*}"
  function_name="${uri#*/}"
  file_name="${uri}.sh"

  # the function
  if [ -d "functions/$group" ]; then
    dest="functions/${file_name}"
    cat > "$dest" <<-EOF

function _.${function_name} {
  local turn=0

  return $turn
}

EOF
    subl "$dest"
  else
    echo "Could not find function folder for: ${uri}"
  fi

  # the test
  if [ -d "test/$group" ]; then
    dest="test/${file_name}"
    cat > "$dest" <<-EOF
#!/bin/bash

echo ' ---== test: _.${function_name}()'

EOF
    chmod 0755 "$dest"
    subl "$dest"
  else
    echo "Could not find test folder for: ${uri}"
  fi
}




# function foo {
#   args=($@)
#   let "last = $# - 1"
#   echo "last arg: ${args[$last]}"
#   bar=(0 1 'and a' 2)
#   export bar
# }
# export -f foo

# a=(`foo`)

# echo a0 = ${a[0]}
# echo a1 = ${a[1]}
# echo a2 = ${a[2]}
# echo a3 = ${a[3]}

# foo one two three
# echo bar0 = ${bar[0]}
# echo bar1 = ${bar[1]}
# echo bar2 = ${bar[2]}
# echo bar3 = ${bar[3]}
