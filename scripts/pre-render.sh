#!/usr/bin/env bash
# Quarto pre-render hook: writes _variables.yml so pages can show when the manual was last updated
# ({{< var build.date >}}, {{< var templates.updated >}}). Uses the commit date when the checkout has
# git history, else today.
set -euo pipefail
cd "$(dirname "$0")/.."
date_iso="$(git log -1 --format=%cs 2>/dev/null || true)"
[ -n "$date_iso" ] || date_iso="$(date -u +%F)"
{
  printf 'build:\n  date: "%s"\n  iso: "%s"\n' "$(date -u -d "$date_iso" '+%-d %B %Y')" "$date_iso"
  cat templates/_updated.yml   # written by scripts/render-templates.sh
} > _variables.yml
