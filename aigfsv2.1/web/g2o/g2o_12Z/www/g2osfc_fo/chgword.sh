#!/bin/sh
set -ax
                                                                                            
for var in dpt rh2m slp tcld wind10m ; do
 cp t2m.html ${var}.html
 cp t2m_top.html ${var}_top.html
 cp t2m_body.html ${var}_body.html

old="_T_"
if [ $var = dpt ]; then  new="_DPT_" ; fi
if [ $var = rh2m ]; then  new="_RH_" ; fi
if [ $var = slp ]; then  new="_SLP_" ; fi
if [ $var = tcld ]; then  new="_TCLD_" ; fi
if [ $var = wind10m ]; then  new="_VWND_" ; fi
                                                                                            
        for files in ${var}.html ${var}_top.html ${var}_body.html ; do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          sed "s?t2m?$var?g" name.new >name.new1  || exit 8
          mv name.new1 $name
        done
done
                                                                                            
exit

