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

echo "gb build start"
gb build
if [ -d "./bin" ]; then
	ls -la ./bin/
	echo "gb build done"
else
	echo "Shit happands ;("
fi

echo "All done, try and deploy it!\n"