#!/usr/bin/env bash
# Builds the English and German CV into out/ and assembles the landing page.
#
# A phone number is only added when a local `.phone` file exists (it is
# gitignored), so CI and the public PDFs never contain it.
set -euo pipefail
cd "$(dirname "$0")"

args=(--font-path fonts --ignore-system-fonts)
if [[ -f .phone ]]; then
  args+=(--input "phone=$(tr -d '\n' < .phone)")
  echo "Including phone number from .phone (local build only)"
fi

mkdir -p out
for lang in en de; do
  typst compile "${args[@]}" --input "lang=$lang" main.typ "out/Milosh_Davidovski_CV_$(echo "$lang" | tr a-z A-Z).pdf"
done

cp site/index.html out/
cp assets/photo.jpg out/photo.jpg
echo "Built: $(ls out)"
