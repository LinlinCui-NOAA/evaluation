#!/bin/sh
set -x
                                                                                            

for var in q rh v; do
cp trms_gglb_body.html  ${var}rms_gglb_body.html 
cp trms_gglb.html       ${var}rms_gglb.html
cp trms_gglb_top.html   ${var}rms_gglb_top.html
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
  for name in ${var}rms_gglb_body.html ${var}rms_gglb.html ${var}rms_gglb_top.html; do
     sed "s?$old?$new?g" $name >name.new  || exit 8
     mv name.new $name
     sed "s?$olda?$newa?g" $name >name.new  || exit 8
     mv name.new $name
  done
  old="trms"
  new="${var}rms"
  for name in ${var}rms_gglb_body.html ${var}rms_gglb.html ${var}rms_gglb_top.html; do
     sed "s?$old?$new?g" $name >name.new  || exit 8
     mv name.new $name
  done
done


for var in t q rh v; do
for area in gnh gsh gtrp g236; do
cp ${var}rms_gglb_body.html  ${var}rms_${area}_body.html 
cp ${var}rms_gglb.html       ${var}rms_${area}.html
cp ${var}rms_gglb_top.html   ${var}rms_${area}_top.html

   old=gglb
   new=${area}
   for name in ${var}rms_${area}_body.html ${var}rms_${area}.html ${var}rms_${area}_top.html; do
      sed "s?$old?$new?g" $name >name.new  || exit 8
      mv name.new $name
   done

   name=${var}rms_${area}_top.html
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
                                                                                            

