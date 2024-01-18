#!/bin/bash

apt --help &> /dev/null

if [ $? -eq 0 ];

then 

        echo "This is ubuntu"

else
	echo "This is CentOs"

fi
