#!/bin/bash

# script to gracefully shutdown the proxmox virtual machines
# need to change it to automatically detect their vm id's

echo
echo "##### Shutting down virtual machines... #####"
echo

for vmn in {100..105}; do
	qm shutdown ${vmn}
	if [[ ${@} -eq 0 ]]; then
    		echo
		echo "##### Shutdown sent successfully #####"
    		echo
	else
    		echo
		echo "##### Possible shutdown adventures... #####"
    		echo
	fi
done

echo
echo "##### Finishing... bye #####"
echo
