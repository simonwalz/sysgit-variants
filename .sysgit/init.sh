#!/bin/bash

shopt -s nullglob

for i in /.sysgit/init/*.sh
do
	"${i}" "$@"
done
