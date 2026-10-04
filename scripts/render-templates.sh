#!/usr/bin/env bash
# Regenerate the downloadable PDFs in templates/pdf/ and forms/pdf/ from their sources with the RIPLRT
# brand (assets/pdf/template-header.tex). They are rendered in a scratch default-type Quarto project so
# the book's chapter/cover settings do not apply. Commit the PDFs together with the source change.
#
#   ./scripts/render-templates.sh            # all templates and forms
#   ./scripts/render-templates.sh templates/project-pod-charter.qmd forms/onboarding-checklist.md
#
# Needs Quarto and a LaTeX distribution on PATH (see README). Records the regeneration date in
# templates/_updated.yml, shown on the Templates and Forms pages.
set -euo pipefail
cd "$(dirname "$0")/.."
QUARTO="${QUARTO:-$( [ -x .quarto-cli/bin/quarto ] && echo .quarto-cli/bin/quarto || echo quarto )}"
[ -d .tinytex/bin/x86_64-linux ] && export PATH="$PWD/.tinytex/bin/x86_64-linux:$PATH"
export LANG=C.UTF-8 LC_ALL=C.UTF-8

# Scratch project lives outside the repo: Quarto ignores dot-directories, and the book must not see these files.
WORK="$(mktemp -d)"
ln -s "$PWD/assets" "$WORK/assets"
cat > "$WORK/_quarto.yml" <<'YAML'
project:
  type: default
  output-dir: out
format:
  pdf:
    documentclass: scrartcl
    papersize: letter
    geometry: [top=20mm, left=20mm, right=20mm, bottom=22mm]
    fontsize: 10pt
    number-sections: false
    colorlinks: true
    linkcolor: riplrtblue
    urlcolor: riplrtblue
    include-in-header: assets/pdf/template-header.tex
    filters: [assets/pdf/full-width-tables.lua]
YAML

if [ $# -gt 0 ]; then sources=("$@"); else
  mapfile -t sources < <(ls templates/*.qmd forms/*.md | grep -v '/index\.qmd$')
fi
for src in "${sources[@]}"; do
  dir="$(dirname "$src")"; name="$(basename "${src%.*}")"
  if [ "$dir" = forms ]; then
    # Forms are plain Markdown with an H1 title; lift it into YAML so the brand header can use it.
    title="$(sed -n '1s/^# //p' "$src")"
    { printf -- '---\ntitle: "%s"\n---\n' "$title"; sed '1d' "$src"; } > "$WORK/$dir--$name.qmd"
  else
    cp "$src" "$WORK/$dir--$name.qmd"
  fi
done

(cd "$WORK" && "$OLDPWD/$QUARTO" render --to pdf)

ls "$WORK"/out/*.pdf >/dev/null
for out in "$WORK"/out/*.pdf; do
  base="$(basename "$out" .pdf)"
  dest="${base%%--*}/pdf/${base#*--}.pdf"
  cp "$out" "$dest" && echo "wrote $dest"
done
printf 'templates:\n  updated: "%s"\n' "$(date -u '+%-d %B %Y')" > templates/_updated.yml
rm -rf "$WORK"
