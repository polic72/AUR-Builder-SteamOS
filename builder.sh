#!/bin/bash

#Check for parameters:
if [[ $# -ne 1 ]]; then
	echo "You must pass 1 parameter; [install/uninstall]"
	exit -1
fi

if [[ "$1" != "install" ]] && [[ "$1" != "uninstall" ]]; then
	echo "The passed parameter must be \"install\" or \"uninstall\"."
	exit -2
fi
