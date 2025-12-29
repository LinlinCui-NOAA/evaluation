#!/bin/sh
set -ax
                                                                                            
#old="daily/emdp_"
#new="daily/emd/emdp_"
#old="Mean-Squared Error from "
#new="RMSE from"                                   
#old="RMSE from Mean Difference:"
#new="Ratio of Standard Deviation between Forecast and Analysis:"
old="emd"                           
new="rsd"
                                                                                            
   filelist=`eval ls  *top*html `
                                                                                            
        for files in $filelist;  do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          #diff $name name.new
          mv name.new $name
        done
                                                                                            
exit

