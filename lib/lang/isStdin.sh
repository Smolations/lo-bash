## /* @function
 #  @usage _isStdin
 #
 #  @output false
 #
 #  @description
 #  Determine if piped input is being streamed.
 #  description@
 #
 #  @examples
 #  if _isStdin; then
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

function _isStdin {
  [[ "$( tty )" == 'not a tty' ]]
}
