#!/usr/bin/env bash

# set -e
set -u
# set -x

out_dir="build"
mkdir -p "$out_dir"

while IFS= read -r typ_file; do
  # Remove leading ./
  clean_name="${typ_file#./}"
  # Create PDF filename
  pdf_name="${clean_name//\//-}"
  pdf_name="${pdf_name%.typ}.pdf"

  echo "Compiling: $clean_name → $pdf_name"
  typst compile "$typ_file" "$out_dir/$pdf_name"
done < <(find . -name 'csh.typ' -type f)
