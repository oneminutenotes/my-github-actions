#!/bin/bash
args=($@)
argcount="${#args[@]}"
echo "argcount=$argcount" >> $GITHUB_OUTPUT