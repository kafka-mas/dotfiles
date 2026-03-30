#!/bin/bash

# Список исключений в виде строки с разделителем |
exclude=".git|repo"

# find -maxdepth 1 -type d -printf "%f\n" | grep -v -E "^($exclude)$"
find . -maxdepth 1 -type d ! -name "." -printf "%f\n" | grep -v -E "^($exclude)$" | while read dir; do
    echo "stow $dir"
    stow $dir
done

echo ""
echo "Setup wallpapers"
awww img ~/.config/wallpapers/autumn_forest.jpg
