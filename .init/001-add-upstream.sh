#!/bin/bash

if test "x$(git config --local --get remote.upstream.url)" = "x"
then
	git remote add upstream https://github.com/simonwalz/sysgit-variants.git
	git fetch upstream
fi

