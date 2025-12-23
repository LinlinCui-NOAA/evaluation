#!/bin/sh
set -ax
                                                                                            
#old="for 00Z Forecasts"
old="_00Z"
new=""
                                                                                            
for dir in bias  msess rms emd rsd epv pcor sfc cor ; do

         cd $dir
        filelist=`eval grep -l -s "$old" *html `
                                                                                            
        for files in $filelist
        do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          #diff $name name.new
          mv name.new $name
        done
cd ..
done
                                                                                            
exit

