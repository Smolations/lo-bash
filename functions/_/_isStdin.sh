## /* @function
 #  @usage _._isStdin
 #
 #  @output false
 #
 #  @description
 #  Determine if piped input is being streamed.
 #  description@
 #
 #  @examples
 #  if _._isStdin; then
 #      cat - | while IFS= read data; do
 #          # stuff with each line...
 #      done
 #  else
 #      # stuff with $@
 #  fi
 #  examples@
 #
 #  @returns
 #  0 - successful execution
 #  1 - failed execution
 #  returns@
 #
 #  @file functions/_/_isStdin.sh
 ## */

# @usage _.math <operation>
# The <operation> must be quoted so that operators won't clash with the system.
# supported operations:  + - * / ^ ** %
# maximum precision: 16
function _._isStdin {
  [ "$( tty )" == 'not a tty' ]
}
