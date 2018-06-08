#!/bin/bash

if test \! -d "/.sysgit/hooks/"
then
	echo "Directory hooks not found."
	exit 1
fi

ln -sf /.sysgit/hooks/post-checkout /.git/hooks/post-checkout
ln -sf /.sysgit/hooks/post-merge /.git/hooks/post-merge

chmod 700 /.git
