

function newfunc {
  uri="$1" group="${uri%/*}" function_name="${uri#*/}" file_name="${uri}.sh"

  # the function
  if [[ -d "functions/$group" ]]; then
    dest="functions/${file_name}"
    cat > "$dest" <<-EOF
## /* @function
 #  @usage _.${function_name}
 #
 #  @output true
 #
 #  @exports
 #  exports@
 #
 #  @description
 #
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  notes@
 #
 #  @examples
 #  $ _.${function_name}
 #  >
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 -
 #  returns@
 #
 #  @file functions/${file_name}
 ## */

function _.${function_name} {
  declare -i turn=0

  return \$turn
}
EOF
    subl "$dest"
  else
    echo "Could not find function folder for: ${uri}"
  fi

  # the test
  if [[ -d "test/$group" ]]; then
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
