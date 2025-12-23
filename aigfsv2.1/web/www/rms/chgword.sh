#!/bin/sh
set -ax
                                                                                            
# use sed to repalce words in files in a directory
#if [ $# -lt 2 ] ; then
#        echo "`date` $0: argument error"
#        exit 8
#fi
#old="allmodel\/daily\/dieoff"
#new="allmodel\/daily\/rms"
old="Bias"
new="RMS Error"
#dir=$3
                                                                                            
#        cd $dir
        filelist=`eval grep -l -s "$old" *top*html `
                                                                                            
        for files in $filelist
        do
          name=`eval echo $files`
          sed "s?$old?$new?g" $name >name.new  || exit 8
          #diff $name name.new
          mv name.new $name
        done
                                                                                            
exit

