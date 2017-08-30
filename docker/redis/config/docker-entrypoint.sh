#!/bin/sh
set -ex

case "$1" in
  "sh" )
    exec "sh";;
  "bash" )
    exec "sh";;
  "redis-server" )
    exec "$@";;
esac

