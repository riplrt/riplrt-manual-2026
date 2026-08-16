# Changelog

All notable changes to the RIPLRT Institute Research Group Manual are recorded here. This manual is a living document; we log substantive changes so members can see how our shared operating system evolves. Format is loosely based on [Keep a Changelog](https://keepachangelog.com/).

## [2.1.0] — 2026-08-16

### Added
- **Aliquary sample-inventory platform** integrated as the sample-inventory system of record:
  - Ch. 16 (Health & Safety): new `Sample inventory: Aliquary` subsection (@sec-aliquary) with the register → locate → track → export workflow, freezer/box maps, barcode lookup, and aliquot + freeze–thaw tracking; the biospecimens section now points to it.
  - Ch. 11 (Data Governance): new `Sample-inventory governance: Aliquary` subsection (@sec-aliquary-governance) covering de-identified-only data, tenant isolation, audit trail, and full export/no lock-in, with a transparency note that Aliquary is an in-house Felix E. Rivera-Mariani, PhD, LLC (FERMLLC) product — a sibling to RIPLRT, not a third-party vendor.
- **RIPLRT Bench operational dashboard** introduced in Ch. 10 (Project Management): new `RIPLRT Bench: the operational hub` subsection (@sec-riplrt-bench) describing it at a high level, with a placeholder callout for exact features and access tiers.
- Cross-references: Ch. 19 (onboarding provisioning + offboarding deprovisioning for both tools), Ch. 12 (sample provenance/traceability line linking to Aliquary), Ch. 9 (Aliquary and RIPLRT Bench rows in the channels table), Ch. 21 (glossary entries for both tools and an in-house "Lab platforms" table with role, URL, and data scope).
- Template updates: `new-member-onboarding-checklist`, `offboarding-checklist`, and `data-use-access-checklist` now include the relevant account-setup, access, and revocation steps. *(Their generated PDFs need regeneration to match — see the manual's PDF pipeline.)*

## [2.0.1] — 2026 (post-launch)

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
