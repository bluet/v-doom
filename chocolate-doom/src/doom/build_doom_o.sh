#!/usr/bin/env bash

set -e

v -o /tmp/doom.c -is_o -gc none -showcc -cg -cflags "-w" -w -translated c2v_out.dir/

cc -c -w -std=c99 -D_DEFAULT_SOURCE -g -o c2v_out.dir/doom.o -x objective-c /tmp/doom.c  -x none -mmacosx-version-min=10.7 -rdynamic