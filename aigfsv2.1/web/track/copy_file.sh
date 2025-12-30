#!/bin/bash

for id in 06 07 08 09 10 11;do
  filename=`ls ep${id}/evs.hurricane_global_det.abstk_err.ep.2025.*.png`
  name=$(echo "$filename" | sed -E 's/.*2025\.([A-Z]+)[0-9]+\.png/\1/') 
  lower_name="${name,,}"
  final_name="${lower_name^}"
  echo $final_name
  cp ep${id}/evs.hurricane_global_det.abstk_err.ep.2025.${name}${id}.png tracks_${final_name}.t.png
  cp ep${id}/evs.hurricane_global_det.abswind_err.ep.2025.${name}${id}.png tracks_${final_name}.t.png


done
