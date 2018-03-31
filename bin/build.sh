#!/bin/sh -eu
. "`dirname "$0"`/include.sh"
target=./dist
rm -rf $target | rm -rf $target/*
mkdir -p $target/linux
godot-headless --export "Linux/X11" $target/linux/hello
mkdir -p $target/www
godot-headless --export "HTML5" $target/www/index.html
