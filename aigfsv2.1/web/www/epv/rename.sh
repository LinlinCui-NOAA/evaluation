#!/bin/sh
set -ax

old=EMD
new=EPV


#for var in T U V UV Z; do
#mv ${var}${old}.html        ${var}${new}.html
#mv ${var}${old}_body.html        ${var}${new}_body.html
#mv ${var}${old}_top.html        ${var}${new}_top.html
#done

for var in T U V UV Z; do
cp ../emd/${var}${old}_top.html        ${var}${new}_top.html
done

exit


