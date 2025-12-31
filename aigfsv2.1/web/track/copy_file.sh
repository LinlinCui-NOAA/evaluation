#!/bin/bash

path=/scratch3/NAGAPE/gpu-ai4wp/Linlin.Cui/VRFY/evs/aigfsv2.1
basin=wp

#for id in `seq -w 1 13`;do
#  filename=`ls ${path}/${basin}${id}/evs.hurricane_global_det.abstk_err.${basin}.2025.*.png`
#  name=$(echo "$filename" | sed -E 's/.*2025\.([A-Z]+)[0-9]+\.png/\1/') 
#  lower_name="${name,,}"
#  final_name="${lower_name^}"
#  echo $final_name
#  rm tracks_${final_name}.t.png
#  #ls ${path}/${basin}${id}/evs.hurricane_global_det.abstk_err.${basin}.2025.${name}${id}.png
#  cp ${path}/${basin}${id}/evs.hurricane_global_det.abstk_err.${basin}.2025.${name}${id}.png tracks_${final_name}.t.png
#
#  rm tracks_${final_name}.i.png
#  cp ${path}/${basin}${id}/evs.hurricane_global_det.abswind_err.${basin}.2025.${name}${id}.png tracks_${final_name}.i.png
#
#
#done

#fullname=Atlantic
#fullname=EastPacific
fullname=WestPacific
rm tracks_${basin}.t.png
ls ${path}/${fullname}/evs.hurricane_global_det.abstk_err.${basin}.2025.${name}${id}season.png
cp ${path}/${fullname}/evs.hurricane_global_det.abstk_err.${basin}.2025.${name}${id}season.png tracks_${basin}.t.png

rm tracks_${basin}.i.png
ls ${path}/${fullname}/evs.hurricane_global_det.abswind_err.${basin}.2025.${name}${id}season.png
cp ${path}/${fullname}/evs.hurricane_global_det.abswind_err.${basin}.2025.${name}${id}season.png tracks_${basin}.i.png
