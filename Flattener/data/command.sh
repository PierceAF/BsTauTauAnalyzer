
full /eos/cms/store/group/phys_bphys/ytakahas/bstautau/nano_with_part_2026Feb11/*/*/*/*/* | while read -r line; do
    raw_name=$(echo "$line" | rev | cut -d'/' -f3 | rev)
    
    clean_name=${raw_name#crab_}
    
    out_file="NanoAOD_MC2018_ParT_idv_${clean_name}.txt"
    
    if [[ ! -f "$out_file" || -z "${seen[$out_file]}" ]]; then
        echo "$line" > "$out_file"
        seen[$out_file]=1
    else
        echo "$line" >> "$out_file"
    fi
done



