#!/bin/bash

for file in $(find $(pwd) -perm -a=w \! -perm -a=x \! -user root -name "*.csv" -o -name "*.bat"); do
        rm -f "$file";
done