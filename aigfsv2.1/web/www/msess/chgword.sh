#!/bin/sh
set -ax
                                                                                            
old="Bias of"
new="Murphy's Mean-Squared Error Skill Score:"
#old="bias"                         
#new="msess"                                      
                                                                                            
   filelist=`eval ls  *top*html `
                                                                                            
        for files in $filelist;  do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          #diff $name name.new
          mv name.new $name
        done
                                                                                            
exit

