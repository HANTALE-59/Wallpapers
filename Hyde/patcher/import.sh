#!/usr/bin/env bash

# Dossier source et destination
SRC="/home/hyde_meow/.cache/hyde/themepatcher"
DST="/home/shared/Pictures/Wallpapers/Hyde"

# Crée le dossier destination si besoin
mkdir -p "$DST"

# Trouve toutes les images et les déplace
find "$SRC" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" \) -exec mv -v {} "$DST" \;

echo "✅ Toutes les images ont été déplacées dans $DST"

