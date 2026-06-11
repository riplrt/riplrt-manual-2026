# RIPLRT Institute Research Group Manual

**A Guide for Environmental Immunology, Respiratory Health Equity, Computational Discovery, and Inclusive Mentoring**

*2026 Edition (v2.0)* — the operating system of the **RIPLRT Institute**, a mentee-powered environmental immunology and respiratory health equity research group. Principal Investigator and mentor: **Dr. Félix E. Rivera-Mariani, PhD, FAAAAI**.

This repository builds a reproducible book/manual with [Quarto](https://quarto.org). It modernizes the 2018/2021 RIPLRT Lab Manual (originally built with R/Bookdown) into a hybrid computational and translational research-group manual.

---

## What this manual is

A single document that serves as an onboarding guide, culture document, project-management playbook, mentoring compact, reproducibility guide, and authorship policy. Our central narrative is **Community-to-Clinic-to-Cloud**, and our scientific through-line is *Exposure Science → Immune Bioactivity → Computational Forecasting → Equity-Focused Translation → Inclusive Workforce Development*.

## Repository structure

```
riplrt-manual-2026/
├── _quarto.yml              # Book configuration (chapters, parts, formats)
├── index.qmd                # Preface / landing page
├── references.bib           # Bibliography (heritage + placeholders)
├── README.md                # This file
├── CONTRIBUTING.md          # How to propose edits
├── CHANGELOG.md             # Revision history
├── CODE_OF_CONDUCT.md       # Community standards
├── LICENSE.md               # Licensing (CC BY 4.0 for text; see file)
├── chapters/                # 21 chapter .qmd files
├── templates/               # Reusable fill-in templates (+ index.qmd)
├── policies/                # Authoritative standalone policies (+ index.qmd)
├── forms/                   # Sign-and-submit forms (+ index.qmd)
└── assets/                  # styles.css, logo, figures (+ README.md)
```

## Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) (current version recommended)
- For PDF output: a LaTeX distribution. The simplest path is:
  ```bash
  quarto install tinytex
  ```
- *Optional, only if chapters execute code:* R and/or Python with the packages your code uses. The manual as written is prose-only and does not require a runtime to build.

## Build the manual

From the repository root:

```bash
# Render all formats configured in _quarto.yml (HTML, PDF, DOCX)
quarto render

# Or render a single format
quarto render --to html
quarto render --to pdf
quarto render --to docx
```

Output is written to `_book/`. Open `_book/index.html` to preview the website.

## Live preview while editing

```bash
quarto preview
```

This serves the book locally and reloads on save.

## How to maintain it

- **Small fixes** (typos, broken links): edit the relevant `.qmd` and open a pull request. See `CONTRIBUTING.md`.
- **New chapter or appendix**: add the `.qmd` file, then register it under `book.chapters` (or `book.appendices`) in `_quarto.yml`.
- **New template/policy/form**: add the file in the matching folder and add a row to that folder's `index.qmd` table.
- **References**: add BibTeX entries to `references.bib`; cite inline with `[@key]`.
- **Versioning**: record every substantive change in `CHANGELOG.md`. Bump the edition label in `_quarto.yml` for major revisions.
- **Annual review**: see Chapter 20. At minimum, review roles, platforms, datasets, policies, and all placeholders once per year.

## Placeholders

Throughout the manual, items needing institutional confirmation are marked as placeholders (IRB links, CITI links, workspace URLs, the EBDL entity name/scope, exact account details). Search the source for `placeholder` before any external release. A one-page confirmation sweep grouped by owner and gating status lives in `PLACEHOLDERS.md`.

## Public vs. internal

The manual text is designed to be shareable. **Do not** commit completed forms (which contain names/signatures), private workspace URLs, credentials, IRB protocol numbers, or any identifiable participant information to a public repository. See `CONTRIBUTING.md` and the Data Governance policy.

## License

Manual **text and figures**: Creative Commons Attribution 4.0 (CC BY 4.0) recommended. Any **code** in the repository: MIT (or your preferred OSI license). See `LICENSE.md`.

## Acknowledgments

Built on the 2018/2021 RIPLRT Lab Manual and inspired by the open lab-manual movement (notably the Aly Lab manual). Maintained reproducibly with Quarto.
