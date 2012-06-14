#!/bin/bash

trap 'kill -15 $kids; exit 143' TERM
coffee -wc javascripts/ &
kids=$!
stylus -w stylesheets/ &
kids="$kids $!"
wait
