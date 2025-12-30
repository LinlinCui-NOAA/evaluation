#!/bin/bash

basin=al
for id in 01 02 03 04 05 06;do
  filename=`ls ${basin}${id}/evs.hurricane_global_det.abstk_err.${basin}.2025.*.png`
  name=$(echo "$filename" | sed -E 's/.*2025\.([A-Z]+)[0-9]+\.png/\1/') 
  lower_name="${name,,}"
  final_name="${lower_name^}"
  echo $final_name
  cp ${basin}${id}/evs.hurricane_global_det.abstk_err.${basin}.2025.${name}${id}.png tracks_${final_name}.t.png
  cp ${basin}${id}/evs.hurricane_global_det.abswind_err.${basin}.2025.${name}${id}.png tracks_${final_name}.i.png


done
