#!/bin/sh
set -ax
                                                                                            
old="daily/dieoff"
new="daily/bias"
#old="Error of Mean Difference"
#new="Bias"
#old="EMD"
#new="BIAS"
                                                                                            
   filelist=`eval ls  *html `
                                                                                            
        for files in $filelist;  do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          #diff $name name.new
          mv name.new $name
        done
                                                                                            
exit

