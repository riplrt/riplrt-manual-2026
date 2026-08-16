# Changelog

All notable changes to the RIPLRT Institute Research Group Manual are recorded here. This manual is a living document; we log substantive changes so members can see how our shared operating system evolves. Format is loosely based on [Keep a Changelog](https://keepachangelog.com/).

## [2.0.2] — 2026-08-16

### Added
- **Aliquary** integrated as the sample-inventory system of record: Ch. 16 workflow (register → locate → track → export), Ch. 11 governance profile (de-identified only, tenant isolation, audit trail, export/no lock-in) with FERMLLC transparency note, plus cross-refs in Ch. 9, 12, 19, 21 and onboarding / offboarding / data-use templates.
- **RIPLRT Bench** introduced as the Institute operational hub / workbench (Ch. 10), with placeholder callouts for exact features and access tiers; provisioning/deprovisioning in Ch. 19 and templates; glossary and Lab Platforms table in Ch. 21.

### Changed
- Clarified **eLabNext** as the experimental lab notebook (protocols/assays); sample inventory now points to Aliquary in Ch. 9–10 and Appendix E.

## [2.0.1] — 2026 (post-launch)

### Added
- Zenodo DOI badge in `README.md` and a **How to cite this manual** section in the Preface (`index.qmd`), with version and concept DOIs.

### Fixed
- Code of Conduct link in Ch. 8 now points to `/policies/code-of-conduct.qmd`.
- Onboarding checklist link in Ch. 19 now points to the New Member template PDF (not the signable form).
- Root-relative links restored in Ch. 20 for the stop/start/continue PDF, `CONTRIBUTING.md`, and `CHANGELOG.md`.
- Annual-review vision/mission checklist item now cross-references `@sec-vision` (Ch. 4).
- Removed duplicate/conflicting EBDL glossary row in Appendix D.
- Research-products poster guidance now links to the GitHub `assets/` folder instead of a non-existent `/assets` page.

### Changed
- **Templates and forms** are now delivered as **downloadable PDFs**, generated from their source files and linked from the Templates and Forms appendix pages. **Policies** remain rendered web pages (searchable, always current).
- Added an explicit `render:` list in `_quarto.yml` so template/form *source* files are no longer published as raw pages (fixes raw `.qmd` downloads), and registered the policy pages in the appendix navigation.
- Updated in-chapter references so every template/form mention links to its **published PDF** (`/templates/pdf/…`, `/forms/pdf/…`) instead of the now-unpublished source file; normalized a few relative paths to root-relative and fixed a broken `/templates…` link in the research-products portfolio table.
- Continuous integration builds the **HTML** site only; PDF and DOCX of the full book remain available via local `quarto render`.

## [2.0.0] — 2026 major revision

The **2026 major revision** transforms the 2018/2021 RIPLRT *Lab* Manual into the 2026 RIPLRT Institute *Research Group* Manual — a complete operating system for a hybrid computational and translational research group. Rebuilt from R/Bookdown into [Quarto](https://quarto.org).

### Added
- New scientific-identity architecture: **Community-to-Clinic-to-Cloud** narrative and the **Exposure Science → Immune Bioactivity → Computational Forecasting → Equity-Focused Translation → Inclusive Workforce Development** through-line.
- **Project Pod model** with explicit roles: PI, project lead, data steward, analysis lead, writing lead, visualization/dashboard lead, reproducibility lead, science communication lead, and trainee contributors.
- Dedicated chapters on **inclusive mentoring**, **psychological safety and team science**, and **communication / digital body language**.
- **Data Governance** chapter and standalone policy: IRB, CITI, HIPAA-adjacent thinking, de-identification, dataset-specific rules, access control, data-use agreements, secure storage.
- **Reproducible & Open Science** chapter: GitHub/GitHub Projects, Quarto/R Markdown, R/RStudio, Python, OSF, Zenodo, FigShare, repository-based datasets (BioLINCC, BioData Catalyst, *All of Us*, MESA, Framingham, AsthmaNet, NHANES), and REDCap where applicable.
- **Responsible AI Use** chapter and standalone policy, plus an AI-use disclosure form.
- **Authorship & Contributorship** chapter and policy using ICMJE principles and a CRediT-style taxonomy, with student-first authorship pathways.
- **Mentoring compact**, Individual Development Plans, and student-development milestones.
- **Conflict resolution, feedback, and accountability** chapter built around a "no-surprises" culture and performance *improvement* (not punishment).
- **Annual review** practices: stop/start/continue, lab climate check, project portfolio review, authorship audit, strategic alignment review.
- 15 reusable **templates**, 4 standalone **policies**, and signable **forms** (onboarding, offboarding, manual acknowledgment).
- Supporting project files: `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `LICENSE.md`, custom `assets/styles.css`.

### Changed
- **Institutional framing** updated from Larkin University / wet-lab to flexible language spanning **Lynn University, the RIPLRT Institute, and Felix E. Rivera-Mariani PhD LLC** and collaborators.
- **Vision, Mission, and Core Values** updated to the 2026 strategic identity; added psychological safety, reproducibility, transparency, health equity, community responsiveness, bilingual science communication, and responsible AI as values.
- **Roles** expanded beyond the wet-lab structure into the pod model.
- **Deadlines** reframed from "every deadline is hard" to a **no-surprises** culture: communicate early, renegotiate responsibly, document changes.
- **Authorship** expanded from ICMJE-only to ICMJE + CRediT contributorship with project-start discussions.

### Removed
- The **COVID-19 chapter**, replaced by a broader **Health, Safety, Fieldwork, Biospecimens, and Remote Work** chapter.
- **Punitive wage mechanics** (waged/non-waged conversions, percentage wage penalties), replaced by professional accountability, documentation, and performance-improvement language.
- Deprecated/retired platforms specific to the prior wet-lab phase where no longer used.

### Migration notes
- Built with Quarto instead of Bookdown; reproducibility principles preserved.
- Heritage acknowledgments retained, including the Aly Lab manual that inspired the original.
- Items requiring institutional confirmation are marked as **placeholders** throughout.

---

## [1.x] — 2018–2021 (historical, RIPLRT Lab Manual)

- 2021-02-02 — Last update of the original manual: COVID-19 protocols revised; current-member contributions incorporated.
- 2018-09-20 — Original RIPLRT Lab Manual created (R/Bookdown), inspired by the Aly Lab manual.

*Earlier history is preserved in the original repository referenced in Chapter 2 (History and Evolution).*
