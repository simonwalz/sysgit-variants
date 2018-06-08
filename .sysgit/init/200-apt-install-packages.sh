#!/bin/bash

if test "x$1" != "x"
then
	# The system is only updating
	exit 0
fi

if test -f /etc/sysgit/apt-packages
then
	apt-get update
	apt-get -y upgrade

	/usr/local/scripts/sysgit/apt-user-installed --install
fi

/usr/local/scripts/sysgit/apt-user-installed --save
