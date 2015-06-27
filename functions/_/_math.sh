
# @usage _.math <operation>
# The <operation> must be quoted so that operators won't clash with the system.
# supported operations:  + - * / ^ ** %
# maximum precision: 16
function _._math {
  args=$@
  awk "BEGIN { printf(\"%.16g\",${args// /}) }"
}