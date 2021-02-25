#!/bin/bash

h1 'lo::isFunction'


function whatwhat {
  :
}

whowho=(1 2 3)
whywhy='1 2 3'

lo::isFunction whatwhat && pass || fail

lo::isFunction whowho && fail || pass
lo::isFunction whywhy && fail || pass
