#!/usr/bin/env bash

if [ $(git tag | grep -c $ICINGA_VER) -gt 0 ]; then
  git tag | grep $ICINGA_VER | sed 's/^v//g' | tail -n 1 | sed "s#$ICINGA_VER-##g"
else
  echo "none"
fi