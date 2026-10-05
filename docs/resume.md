# Resume

One Typst source, two variants. Last reviewed 2026-10-05.

## How it works

- `src/lib/assets/resume.typ` reads `sys.inputs.variant` (`phd` or `industry`). `project-order` and the `*-detail` blocks branch on `is-phd`.
- The `phd` variant is labelled **Research** on the site and is served at `/resume` and `/resume.pdf`. The `industry` variant is at `/resume/industry` and `/resume-industry.pdf`.
- `bun run build:typst` writes both PDFs into `static/`. Both are committed, because production does not shell out to Typst. `bun run build` runs it first.
- The Vite plugin in `vite.config.ts` exports both SVGs (default = phd, named `industry`). `src/lib/components/Resume.svelte` renders the tabs and the PDF button, and the two route files only pick a variant.
- Each variant must fit one page. Check with `typst compile --input variant=<v> --format png src/lib/assets/resume.typ out-{p}.png` and look for a second page.
- Typst gotchas: a bare `~` is a non-breaking space (write `\~`); use `$times$` for ×.
- Bump "Updated on" with each change.

## Claims to re-check when a repo changes

| Claim                                                        | Source                             | Note                                                                    |
| ------------------------------------------------------------ | ---------------------------------- | ----------------------------------------------------------------------- |
| scratchtape: DX12 1.6--5.8$times$ lower overhead than Vulkan | scratchtape README, idle-GPU rerun | Not the first run's 7x (GPU was shared). Applies to small matmuls only. |
| scratchtape: up to 900 GFLOP/s                               | scratchtape README                 | Naive kernel at training shapes.                                        |
| cereal: 96% of 3,700+ gcc.dg tests                           | cereal STATUS.md                   | Pushed state only. The local repo may be ahead.                         |
| renno: 400+ tests                                            | `cargo test`                       | 422 passed on 2026-10-04.                                               |
| arrow-game: 300+ tests                                       | `bun test`                         | README says 369.                                                        |
| tatic: "where possible" kernel-checked proof                 | tatic README                       | Do not drop the qualifier.                                              |

## Public and private

- Public (linked from the resume and `/projects`): tatic, scratchtape, renno, cereal, arrow-game.
- Private by decision, never link: manifold, lollipoppy, Lambast. The resume names them without links; `/projects` marks manifold and lollipoppy "private for now".
- Public history must contain only the noreply address (`92236815+winstonyli@users.noreply.github.com`), and no local paths (`C:\Users`). Audit before making any repo public or pushing a large batch.

## Open items

- cereal has 8 local commits not yet pushed. When pushed, re-audit them and re-check the cereal bullet.
- Pages is built from `main` by GitHub Actions; confirm `/resume/` and the PDFs after any change.
