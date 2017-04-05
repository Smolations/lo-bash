

function newfunc {
  uri="$1" group="${uri%/*}" function_name="${uri#*/}" file_name="${uri}.sh"

  # the function
  if [ -d "functions/$group" ]; then
    dest="functions/${file_name}"
    cat > "$dest" <<-EOF

function _.${function_name} {
  local turn=0

  return \$turn
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

h1 '${function_name}'

# && pass || fail
EOF
    chmod 0755 "$dest"
    subl "$dest"
  else
    echo "Could not find test folder for: ${uri}"
  fi
}



function foo {
  echo "file: $1"
}

_.recurse "functions/math" foo




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


# embedded arrays
  # #!/bin/bash
  # # embedded-arrays.sh
  # # Embedded arrays and indirect references.

  # # This script by Dennis Leeuw.
  # # Used with permission.
  # # Modified by document author.


  # ARRAY1=(
  #         VAR1_1=value11
  #         VAR1_2=value12
  #         VAR1_3=value13
  # )

  # ARRAY2=(
  #         VARIABLE="test"
  #         STRING="VAR1=value1 VAR2=value2 VAR3=value3"
  #         ARRAY21=${ARRAY1[*]}
  # )       # Embed ARRAY1 within this second array.

  # function print () {
  #         OLD_IFS="$IFS"
  #         IFS=$'\n'       #  To print each array element
  #                         #+ on a separate line.
  #         TEST1="ARRAY2[*]"
  #         local ${!TEST1} # See what happens if you delete this line.
  #         #  Indirect reference.
  #   #  This makes the components of $TEST1
  #   #+ accessible to this function.


  #         #  Let's see what we've got so far.
  #         echo
  #         echo "\$TEST1 = $TEST1"       #  Just the name of the variable.
  #         echo; echo
  #         echo "{\$TEST1} = ${!TEST1}"  #  Contents of the variable.
  #                                       #  That's what an indirect
  #                                       #+ reference does.
  #         echo
  #         echo "-------------------------------------------"; echo
  #         echo


  #         # Print variable
  #         echo "Variable VARIABLE: $VARIABLE"

  #         # Print a string element
  #         IFS="$OLD_IFS"
  #         TEST2="STRING[*]"
  #         local ${!TEST2}      # Indirect reference (as above).
  #         echo "String element VAR2: $VAR2 from STRING"

  #         # Print an array element
  #         TEST2="ARRAY21[*]"
  #         local ${!TEST2}      # Indirect reference (as above).
  #         echo "Array element VAR1_1: $VAR1_1 from ARRAY21"
  # }

  # print
  # echo

  # exit 0

  #   As the author of the script notes,
  #+ "you can easily expand it to create named-hashes in bash."
  #   (Difficult) exercise for the reader: implement this.
