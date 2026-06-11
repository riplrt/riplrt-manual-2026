# Contributing to the RIPLRT Institute Research Group Manual

This manual belongs to all of us, and it improves because members improve it. Whether you found a typo, a broken link, an outdated platform, or you want to propose a whole new section — your contribution is welcome and will be acknowledged in `CHANGELOG.md`.

This is a living document. Suggesting a change is not a criticism; it is exactly how we keep the manual honest and useful.

## Ways to contribute

You don't need to be a Git expert to help. Pick whichever fits:

1. **Raise it in a meeting or message.** Mention it in a weekly huddle or to the PI / a designated lead. Someone will help turn it into an edit.
2. **Open a GitHub issue.** Describe what's wrong or missing and where (chapter/section). Use a clear title. This is the best option if you're not sure what the fix should be.
3. **Open a pull request (PR).** If you know the fix, edit the relevant `.qmd` (or `.md`) file and open a PR. This is ideal for typos, link fixes, and well-scoped additions.

## Pull request workflow

```bash
# 1. Create a branch
git checkout -b fix/typo-chapter-7

# 2. Make your edit in the relevant file (e.g., chapters/07-inclusive-mentoring.qmd)

# 3. (Optional but encouraged) Preview locally
quarto preview

# 4. Commit with a clear message
git commit -am "Fix: correct mentoring cadence in Ch. 7"

# 5. Push and open a PR against `main`
git push origin fix/typo-chapter-7
```

A maintainer (the PI or a designated lead) reviews and merges. For anything touching **policy** (authorship, data governance, responsible AI, code of conduct), the **PI must approve**.

## Style guidelines

To keep the manual coherent:

- **Tone:** professional, warm, direct, inclusive. Use "we" language. State expectations clearly without being punitive.
- **Headings:** sentence-case section headings; keep the existing chapter numbering scheme.
- **Bullets and procedures:** prefer concrete, actionable steps over abstract philosophy.
- **Placeholders:** when something needs institutional confirmation (an IRB link, a URL, the EBDL entity name), mark it explicitly, e.g. *(placeholder — confirm …)* or a `::: {.callout-note}` block. Don't invent confidential details.
- **Cross-references:** use Quarto cross-refs (e.g., `@sec-mentoring`) rather than hard-coded chapter numbers where possible, so renumbering doesn't break links.
- **Citations:** add sources to `references.bib` and cite with `[@key]`.
- **New files:** register new chapters/appendices in `_quarto.yml`; add new templates/policies/forms to the relevant `index.qmd` table.

## What *not* to commit

Never add to the repository (especially if it is public):

- Completed forms containing names or signatures.
- Identifiable human-participant data, IRB protocol numbers, or anything covered by a data-use agreement.
- Credentials, private workspace URLs, API keys, or personal contact information.

If you're unsure whether something is safe to commit, **ask the PI before pushing.** See the Data Governance policy.

## Acknowledgment

Every merged contribution is recorded in `CHANGELOG.md`. Sustained contributions to the manual are a real form of group citizenship and are recognized in annual reviews.

Thank you for helping make RIPLRT both a serious scientific program and a humane place to grow.
