#!/bin/bash
script_dir="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"
cd $script_dir/..
$script_dir/run_docker.sh run --user $(id -u) -v $script_dir/workdir:/kb/module/work -e "SDK_CALLBACK_URL=$1" test/songtc_test:latest test
