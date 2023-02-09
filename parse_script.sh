#!/bin/bash

input=$(echo $1 | sed 's/,/ /g')
input_files=()

for item in $input; do
if [[ $item == *":"* ]]; then
        pm_name=$(echo $item | cut -f1 -d:)
        dep_file=$(echo $item | cut -f2 -d:)
        input_files+=$pm_name":/tmp/packj/"$dep_file" "
fi
done

echo $input_files > input_files.txt