# Placeholder Tracking Checklist

*RIPLRT Institute Research Group Manual — 2026 Edition (v2.0)*

One-page confirmation sweep. **Nothing ships externally until every gating row is checked.** Owner is the person who can confirm the fact; the PI signs off. Re-run this sweep at each annual review (Ch. 20). Source check: `grep -rin "placeholder" .`

**Gating** = must be resolved before any public/external release. **Internal** = needed for full internal use but not a release blocker.

| ✔ | Item | Where it lives | What's needed | Owner | Gating? |
|---|---|---|---|---|---|
| ☐ | **IRB-of-record** | `policies/data-governance.qmd`, `chapters/11`, `forms/onboarding-checklist.md`, `chapters/20`, `chapters/21` | Confirm IRB of record per project/partnership and the protocol-listing process | PI | **Yes** |
| ☐ | **CITI training link** | `forms/onboarding-checklist.md`, `chapters/11` | Insert institutional CITI access URL/instructions | PI | **Yes** |
| ☐ | **Code of Conduct reporting channel** | `CODE_OF_CONDUCT.md` | Add Lynn reporting office / Title IX / ombuds contact + any anonymous mechanism | PI | **Yes** |
| ☐ | **Institutional affiliations / framing** | `chapters/02`, `chapters/20` | Confirm how Lynn / RIPLRT Institute / LLC / partners are named per context | PI | **Yes** |
| ☐ | **License compatibility** | `LICENSE.md` | Confirm CC BY 4.0 (text) + MIT (code) clear Lynn IP policy and sponsor/dataset terms | PI + Lynn IP office | **Yes** |
| ☐ | **Facility-specific safety rules** | `chapters/16` | Point to Lynn's safety / fieldwork / biospecimen procedures | PI / safety lead | **Yes** |
| ☐ | **EBDL entity name & scope** | `chapters/21` (glossary) | Confirm or replace placeholder name and scope | PI | Internal |
| ☐ | **Workspace / repo / IRB URLs** | `chapters/21`, `chapters/10` | Record exact tool instances (ClickUp, GitHub Projects, Drive/OneDrive) | PI / data steward | Internal |
| ☐ | **Communication channels** | `forms/onboarding-checklist.md` | Confirm exact messaging/email/calendar tools | PI | Internal |
| ☐ | **Where completed forms are stored** | `forms/index.qmd` | Define storage destination (private Drive/OneDrive, REDCap, signed PDF) | PI / data steward | **Yes** |
| ☐ | **Institution/sponsor exit steps** | `forms/offboarding-checklist.md` | Confirm required offboarding process | PI | Internal |
| ☐ | **Travel funding specifics** | `chapters/18` | Add real travel-funding rules/limits/process | PI | Internal |
| ☐ | **Logo** | `assets/README.md`, `_quarto.yml` | Add logo file; wire into config + `index.qmd` | PI / comms | Internal |
| ☐ | **Figures** (C2C2C + through-line diagrams) | `assets/README.md` | Create/add diagrams; embed with alt text | PI / viz lead | Internal |
| ☐ | **MIT `LICENSE` file** | repo root | ✅ Added — confirm copyright line is acceptable | PI | **Yes** |
| ☐ | **References** | `references.bib` | Replace placeholder versions/URLs with confirmed citations | reproducibility lead | Internal |

## Release safety — never commit to a public repo
- [ ] No completed forms with names/signatures
- [ ] No IRB protocol numbers, DUA-restricted data, or identifiable participant info
- [ ] No credentials, API keys, or private workspace URLs
- [ ] All **Gating** rows above checked and PI-approved

*See `CONTRIBUTING.md` and the Data Governance policy for the full do-not-commit list.*
