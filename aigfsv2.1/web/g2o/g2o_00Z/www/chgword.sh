#!/bin/sh
set -ax
                                                                                            
old="white_blu.png"
new="white_blu.gif"
                                                                                            
for dir in cor err rms precip; do
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

