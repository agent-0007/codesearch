#!/bin/sh

# my GOPATH dir
GOPATH="$HOME/Go/bin"

# check GOPATH Dir
if [ -p "$HOME/bin" ]; then
	mkdir -p $GOPATH
fi

echo "Export $GOPATH"
export PATH=$PATH:$GOPATH
echo "PATH=$PATH"

echo "gb vendor fetch start"
gb vendor fetch github.com/agent-0007/codesearch
echo "gb vendor fetch done"

