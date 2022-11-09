#!/bin/bash

file="datafile"
line="my-data"

file_content=$( cat "${file}" )
if [[ " $file_content " =~ $line ]]
    then
        generate report
	export-reports
    else
        echo "No data"
	exit 0
fi

exit
