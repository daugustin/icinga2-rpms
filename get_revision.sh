#!/usr/bin/env bash

ICINGA_VER=$(./get_version.sh)
if [ $(git tag | grep -c "$ICINGA_VER") -gt 0 ]; then
  VER=$(git tag | grep "$ICINGA_VER" | sed 's/^v//g' | tail -n 1 | sed "s#${ICINGA_VER}-##g")
  echo $((VER+1))
else
  echo 1
fi