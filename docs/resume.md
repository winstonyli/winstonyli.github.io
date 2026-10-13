# Resume

One Typst source, two variants. Last reviewed 2026-10-12.

## How it works

- `src/lib/assets/resume.typ` reads `sys.inputs.variant` (`phd` or `industry`). `project-order` and the `*-detail` blocks branch on `is-phd`.
- The `phd` variant is labelled **Research** on the site and is served at `/resume` and `/resume.pdf`. The `industry` variant is at `/resume/industry` and `/resume-industry.pdf`.
- `bun run build:typst` writes both PDFs into `static/`. Both are committed, because production does not shell out to Typst. `bun run build` runs it first.
- The Vite plugin in `vite.config.ts` exports both SVGs (default = phd, named `industry`). `src/lib/components/Resume.svelte` renders the tabs and the PDF button, and the two route files only pick a variant.
- Each variant must fit one page. Check with `typst compile --input variant=<v> --format png src/lib/assets/resume.typ out-{p}.png` and look for a second page.
- Typst gotchas: a bare `~` is a non-breaking space (write `\~`); use `$times$` for ×.
- Bump "Updated on" with each change.

## Claims to re-check when a repo changes

| Claim                                                        | Source                               | Note                                                                                                                                                                                                                                      |
| ------------------------------------------------------------ | ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| scratchtape: DX12 1.6--5.8$times$ lower overhead than Vulkan | scratchtape README, idle-GPU rerun   | Not the first run's 7x (GPU was shared). Applies to small matmuls only.                                                                                                                                                                   |
| scratchtape: up to 900 GFLOP/s                               | scratchtape README                   | Naive kernel at training shapes.                                                                                                                                                                                                          |
| cereal: 3,908 of 3,910 runnable gcc.dg tests                 | cereal README.md:69, STATUS.md:33    | "Runnable" matters: 3,910 is the files `bench/tools/par.py` runs (it skips tests with target selectors, other `-std`, unsupported options). The repo gives no total. c-c++-common is 637/638 in STATUS.md; the README's 634/636 is stale. |
| cereal: language server                                      | cereal STATUS.md:39-43, B4_DESIGN.md | Partial: workspace/symbol covers open units only, no cross-file references or workspace index (B5), rename edits one file. Checked against clangd on 6 files. Do not claim self-hosting.                                                  |
| renno: 400+ tests                                            | `cargo test`                         | 422 passed on 2026-10-04; 610 `#[test]` attributes on 2026-10-12 (not run). Run `cargo test` before quoting a bigger number.                                                                                                              |
| manifold: 80k-line                                           | `git ls-files '*.rs'` line count     | 80,768 lines, 7 crates, 2026-10-12. Private repo.                                                                                                                                                                                         |
| arrow-game: 400+ tests                                       | `bun test`                           | 439 pass (run 2026-10-13 at v0.4.1; 437 on 2026-10-12). The arrow-game README no longer states a count (removed 2026-10-13), so run `bun test` there.                                                                                     |
| tatic: "where possible" kernel-checked proof                 | tatic README                         | Do not drop the qualifier.                                                                                                                                                                                                                |

## Public and private

- Public (linked from the resume and `/projects`): tatic, scratchtape, renno, cereal, arrow-game.
- Private by decision, never link: manifold, lollipoppy, Lambast. The resume names them without links; `/projects` marks manifold and lollipoppy "private for now".
- Public history must contain only the noreply address (`92236815+winstonyli@users.noreply.github.com`), and no local paths (`C:\Users`). Audit before making any repo public or pushing a large batch.

## Open items

- arrow-game's 30 new commits (danger rings, evolved steering bot, balance work) were pushed and deployed 2026-10-13 (v0.4.1). Its Pages deploy runs only on `v*` tags or manual dispatch; the v0.3.1 and v0.4.0 tag runs failed on the `github-pages` environment protection rule, v0.4.1 succeeded. Consider an evolved-bot resume bullet.
- Considered and parked (2026-10-12): tatic rule-mining results (single runs, one theory, mixed; Research-only line at most); scratchtape kNN/IVF speedups (single unrepeated runs) and the CPU-vs-GPU training time (4.5 h CPU figure may be extrapolated); manifold per-frame and stuck-engine numbers (measured on a loaded machine).
- cereal is fully pushed as of 2026-10-12.
- Pages is built from `main` by GitHub Actions; confirm `/resume/` and the PDFs after any change.
