#!/usr/bin/env bash
set -e

curl -OL https://raw.githubusercontent.com/daugustin/icinga2-rpms/master/icinga.key
for el in 8 9; do
  mkdir -p el${el}
  cd el${el}
  for rpm in $(curl -sL https://api.github.com/repos/daugustin/icinga2-rpms/releases/latest | jq -r .assets[].browser_download_url | grep el${el}); do
    curl -OL "$rpm"
  done
  createrepo .
  cd ..
done