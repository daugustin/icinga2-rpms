#!/usr/bin/env bash

curl -sL https://api.github.com/repos/Icinga/icinga2/releases/latest  | jq -r .tag_name | tr -d v