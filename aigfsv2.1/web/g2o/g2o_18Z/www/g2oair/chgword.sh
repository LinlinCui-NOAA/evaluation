#!/bin/sh
set -ax
                                                                                            
old="_00Z"
new=""
                                                                                            
        filelist=`eval grep -l -s "$old" *html `
                                                                                            
        for files in $filelist
        do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          mv name.new $name
        done
                                                                                            
exit

