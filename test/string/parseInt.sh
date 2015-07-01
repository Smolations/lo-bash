#!/bin/bash

h1 'parseInt'

[ "`_.parseInt 3`" == '3' ] && pass || fail
[ "`_.parseInt '03'`" == '3' ] && pass || fail
[ "`_.parseInt 3.321`" == '3' ] && pass || fail
[ "`_.parseInt '3abc'`" == '3' ] && pass || fail
[ "`_.parseInt '   3.4'`" == '3' ] && pass || fail
[ "`_.parseInt abc`" == '' ] && pass || fail

# [ "`_.parseInt abc`" == '' ] && fail || pass

