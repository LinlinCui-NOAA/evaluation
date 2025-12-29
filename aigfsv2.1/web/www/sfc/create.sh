#!/bin/sh
set -x

#for var in CAPE CWAT PWAT HGTTRP TMPTRP HPBL PSFC PSL RH2m SPFH2m T2m TOZONE TG U10m V10m WEASD TSOILT WSOILT; do
for var in HPBL RH2m SPFH2m T2m TOZONE TG U10m V10m WEASD TSOILT WSOILT; do
cp PSL_body.html  ${var}_body.html
cp PSL.html       ${var}.html  
cp PSL_top.html   ${var}_top.html

old="PSL"
new="$var"
   for files in ${var}_body.html ${var}.html ${var}_top.html
   do
     name=`eval echo $files`
     sed "s?$old?$new?g" $name >name.new  || exit 8
     mv name.new $name
   done
done

exit

