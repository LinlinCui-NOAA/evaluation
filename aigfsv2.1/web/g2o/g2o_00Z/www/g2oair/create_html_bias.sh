#!/bin/sh
set -ax
                                                                                            

for var in q rh v; do
cp tbias_gglb_body.html  ${var}bias_gglb_body.html 
cp tbias_gglb.html       ${var}bias_gglb.html
cp tbias_gglb_top.html   ${var}bias_gglb_top.html
  old="T_"
  olda="Temperature"
  if [ $var = rh ]; then
   new="RH_"
   newa="Relative Humidity"
  elif [ $var = q ]; then
   new="Q_"
   newa="Specific Humidity (g/kg)"
  elif [ $var = v ]; then
   new="VWND_"
   newa="Vector Wind (m/s)"
  fi
  for name in ${var}bias_gglb_body.html ${var}bias_gglb.html ${var}bias_gglb_top.html; do
     sed "s?$old?$new?g" $name >name.new  || exit 8
     mv name.new $name
     sed "s?$olda?$newa?g" $name >name.new  || exit 8
     mv name.new $name
  done
  old="tbias"
  new="${var}bias"
  for name in ${var}bias_gglb_body.html ${var}bias_gglb.html ${var}bias_gglb_top.html; do
     sed "s?$old?$new?g" $name >name.new  || exit 8
     mv name.new $name
  done
done



for var in t q rh v; do
for area in gnh gsh gtrp g236; do
cp ${var}bias_gglb_body.html  ${var}bias_${area}_body.html 
cp ${var}bias_gglb.html       ${var}bias_${area}.html
cp ${var}bias_gglb_top.html   ${var}bias_${area}_top.html

   old=gglb
   new=${area}
   for name in ${var}bias_${area}_body.html ${var}bias_${area}.html ${var}bias_${area}_top.html; do
      sed "s?$old?$new?g" $name >name.new  || exit 8
      mv name.new $name
   done

   name=${var}bias_${area}_top.html
   old="the Globe"
   if [ $area = gnh ]; then
    new="the Northern Hemisphere"
   elif [ $area = gsh ]; then
    new="the Southern Hemisphere"
   elif [ $area = gtrp ]; then
    new="the Tropics"
   elif [ $area = g236 ]; then
    new="CONUS"
   fi
   sed "s?$old?$new?g" $name >name.new  || exit 8
   mv name.new $name

done
done
                                                                                            

