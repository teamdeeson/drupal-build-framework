#!/usr/bin/env bash

set -e

script_path=$(dirname $0)
working_dir=$(pwd)
cd "$script_path"
cd ../..
repo_root=$(pwd)

source "$repo_root/.build.env"

if [ "$frontend_build" == "Y" ]; then
  cd "$frontend_dir"
  if [ ! -z "$frontend_install_command" ]; then
    $frontend_install_command
  fi
  if [ ! -z "$frontend_build_command" ]; then
    $frontend_build_command
  fi
fi
