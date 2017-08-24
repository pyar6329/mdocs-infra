#!/bin/sh
set -ex

case "$1" in
  "sh" )
    exec "sh";;
  "bash" )
    exec "sh";;
  "nginx" )
    exec "$@";;
esac

