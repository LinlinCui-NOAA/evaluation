#!/bin/sh
set -ax

old=T
new=O3
                                                                                            
for dir in bias emd epv msess pcor rms rsd ; do
  cd $dir

  dirc=$(echo $dir|tr '[a-z]' '[A-Z]')

  cp ${old}${dirc}.html        ${new}${dirc}.html            
  cp ${old}${dirc}_body.html   ${new}${dirc}_body.html 
  cp ${old}${dirc}_top.html    ${new}${dirc}_top.html

        for files in ${new}${dirc}.html ${new}${dirc}_body.html ${new}${dirc}_top.html
        do
          name=`eval echo $files`
          sed -e "s?_${old}_?_${new}_?g" \
              -e "s?${old}${dirc}?${new}${dirc}?g" \
              -e "s?Temperature (K)?Ozone Mixing Ratio (ppmg)?g"  \
              $name >name.new  || exit 8
          mv name.new $name
        done
cd ..
done
                                                                                            
exit

