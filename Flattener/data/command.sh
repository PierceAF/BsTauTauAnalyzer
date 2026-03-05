#!/bin/bash

# For each subdirectory in the given directory, create a file listing all .root files

for subdir in /eos/cms/store/group/phys_bphys/ytakahas/bstautau/nano_with_part_2026Feb24/*; do
    # Extract just the basename of the subdirectory
    dirname=$(basename "$subdir")
    
    # Create output filename
    output_file="NanoAOD_MC2018_ParT_idv_${dirname}.txt"
    
    # Find all .root files in subdirectory recursively and write parent directory path to output file
    find "$subdir" -name "*.root" -exec dirname {} \; | sort -u > "$output_file"
done


for subdir in /eos/cms/store/group/phys_bphys/ytakahas/bstautau/nano_with_part_2026Feb26/*; do
    # Extract just the basename of the subdirectory
    dirname=$(basename "$subdir")
    
    # Create output filename
    output_file="NanoAOD_${dirname}2018.txt"
    
    # Find all .root files in subdirectory recursively and write parent directory path to output file
    find "$subdir" -name "*.root" -exec dirname {} \; | sort -u > "$output_file"
done