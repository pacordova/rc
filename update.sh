#!/bin/bash

# Merge with upstream. 
# Use `git diff` to cherrypick changes.
# TODO: maybe patch upstream instead?
git clone https://github.com/9fans/plan9port 2>/dev/null
git -C plan9port pull

cp -r plan9port/include/* include
cp -r plan9port/src/lib9/* lib
cp -r plan9port/src/cmd/rc/* src

find . -name mkfile -delete
