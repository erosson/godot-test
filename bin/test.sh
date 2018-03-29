#!/bin/sh -eu
. "`dirname "$0"`/include.sh"
godot-headless -s addons/gut/gut_cmdln.gd -d -gdir=res://test "$@" -glog=1 -gexit
