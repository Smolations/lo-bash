## /* @function
 #  @usage _.isStdin
 #
 #  @output false
 #
 #  @description
 #  Determine if piped input is being streamed.
 #  description@
 #
 #  @examples
 #  if _.isStdin; then
 #    cat - | while IFS= read data; do
 #      # stuff with each line...
 #    done
 #  else
 #    # stuff with $@
 #  fi
 #  examples@
 #
 #  @returns
 #  0 - successful execution
 #  1 - failed execution
 #  returns@
 #
 #  @file functions/lang/isStdin.sh
 ## */

function _.isStdin {
  [ "$( tty )" == 'not a tty' ]
}