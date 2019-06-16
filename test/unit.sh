#!/usr/bin/env bash

# Standard build tools boilerplate
script_args=$@
script_path=$(dirname $0)
working_dir=$(pwd)
cd "$script_path"
cd ../../..
repo_root=$(pwd)

source "$repo_root/.build.env"

set -e

# Run unit tests.
if [ "$drupal_version" == "8" ]; then
  ./vendor/bin/phpunit

elif [ "$drupal_version" == "7" ]; then
  echo 'No unit tests implemented yet.'

fi
