#!/bin/bash

project_name=$(git remote -v | head -n1 | awk '{print $2}' | sed 's/.*\///' | sed 's/\.git//')
year=$(date +%Y)
file_name=$(echo "$1" | sed 's/.*\///')

echo "/*" > $1
echo "** EPITECH_PROJECT, $year" >> $1
echo "** $project_name" >> $1
echo "** File description:" >> $1
echo "** $file_name" >> $1
echo "*/" >> $1

