#!/bin/bash


for Instance in `cat vm.txt`

do
sleep 2	
echo "Creating file $Instance"
touch $Instance

done
