#!/bin/bash -eu

if [[ $# -le 2 ]]; then
  exit 1
fi

readonly host="$1"
shift
readonly cmd="$@"

until mysqladmin -h "$host" ping; do
  >&2 echo 'MySQL is unavailable - waiting'
  sleep 1
done

>&2 echo 'MySQL is up!'
exec $cmd