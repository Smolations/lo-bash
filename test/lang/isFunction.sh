#!/bin/bash

h1 '_isFunction'


function whatwhat {
  :
}

whowho=(1 2 3)
whywhy='1 2 3'

_isFunction whatwhat && pass || fail

_isFunction whowho && fail || pass
_isFunction whywhy && fail || pass
