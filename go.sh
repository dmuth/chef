#!/bin/bash
#
# Wrapper to run Chef.
#


DEBUG=""
if test "$CHEF_ENV" == "debug"
then
	DEBUG="-l debug"
fi

sudo chef-solo -c chef-solo.rb -j chef-solo.js $DEBUG $@

if test "$CHEF_ENV" == "debug"
then
	echo ""
	echo "Too much output? Try running with CHEF_ENV=\"\" next time!"
	echo ""

else
	echo ""
	echo "Not enough output? Try running with CHEF_ENV=\"debug\" next time!"
	echo ""

fi

