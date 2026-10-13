#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true, spacing: 0.9em)
#set text(size: 13pt)
#show link: underline

#let variant = sys.inputs.at("variant", default: "phd")
#let is-phd = variant == "phd"

#let div(content) = {
    smallcaps(content)
    v(-3pt)
    line(length: 100%, stroke: (thickness: 2pt, dash: "loosely-dotted"))
    v(-5pt)
}

#let hlist(es) = {
    v(-6pt)
    stack(
        dir: ltr,
        spacing: 1.2em,
        ..es.fields().children.filter(e => e != [ ]),
    )
}


#place(top)[= #smallcaps[Winston Li]]

#move(dy: 1.5pt)[#h(1fr); Updated on Oct 13, 2026.]

#link("mailto:liwy3@uci.edu")[liwy3\@uci.edu]
#sym.bullet
#link("tel:+9255886740")[(925) 588-6740]
#sym.bullet
#link("https://winstonyli.github.io")[winstonyli.github.io]
#sym.bullet
winstonyli on
#link("https://github.com/winstonyli")[GitHub]
and
#link("https://www.linkedin.com/in/winstonyli")[LinkedIn]


#div[== Education]

*UC Irvine* #sym.bullet B.S. in Computer Science w/ Honors, 3.9 / 4.0 GPA #h(1fr) Sep 2024 -- Jun 2026
#hlist[
    - graduated in 2 years
    - ICS Honors Program
    - UROP Fellow
]
#hlist[
    - Data Structures
    - Algorithms
    - Software Eng.
    - Operating Systems
    - Compilers
]
#hlist[
    - Cryptography
    - Formal Lang. & Automata
    - Quantum Computation
    - Distributed Systems
]

#div[== Projects]

#let lambast-subtitle = if is-phd [
    Honors research project using Rust
] else [
    Rust compiler project
]

#let lambast-detail = if is-phd [
- Generated randomized benchmark terms via Grygiel & Lescanne's binary lambda-term enumeration; presented at the *UCI UROP Symposium*.
] else [
- Presented research at the UCI UROP Symposium.
]

#let lambast = [
*Lambast* #sym.bullet _#(lambast-subtitle)_ #h(1fr) Feb 2025 -- Jun 2026
- Built a whole-program optimizing compiler for untyped #(sym.lambda)-calculus using *closure conversion* and *De Bruijn indices*.
#lambast-detail
]

#let tatic-detail = if is-phd [
- Built a *JIT* for a higher-order language, caching compiled *WebAssembly* by content hash.
- Gated installation on agreement with an interpreter and a *kernel-checked proof* of the compiler model; unprovable terms stay interpreted.
- Added an independent checker replaying the specializer, and translation validation from the IR.
- Fuzzed the JIT against the interpreter: 1000 seeds $times$ 12 trials, zero mismatches, planted bugs caught.
- Mined rewrite rules from laws the prover couldn't close; seeded libraries needed 3--5$times$ fewer machine proofs (one theory).
] else [
- Built a *JIT* caching *WebAssembly* by content hash; installs code only if it matches an interpreter and has a *machine-checked proof* of the compiler model; the rest stays interpreted.
- Fuzzing and benchmarks caught a checker overflow and a memory leak; no mismatches in \~12k trials.
]

#let tatic = [
*#link("https://github.com/winstonyli/tatic")[tatic]* #sym.bullet _#(if is-phd [Rust, WebAssembly, dependent type theory] else [Rust, WebAssembly])_ #h(1fr) Mar 2026 -- Present
#tatic-detail
]

#let renno = [
*#link("https://github.com/winstonyli/renno")[renno]* #sym.bullet _Rust_ #h(1fr) Sep 2026 -- Present
- Built a scripting language on a *CEK machine* with multi-shot *algebraic effect handlers*.
- Added *gradual typing*, run-time checks, effect rows, refinements, length-indexed vectors; 400+ tests.
]

#let cereal-detail = if is-phd [
- Wrote a C99/GNU front end in C99: preprocessor, macro lint, parser, checker, *language server*.
- Matched gcc-13 diagnostics on 3,908/3,910 runnable gcc.dg tests; fuzzed parallel `-E` for same output.
] else [
- Wrote a C99 front end and *language server*; matched gcc-13 on 3,908 of 3,910 runnable gcc.dg tests.
]

#let cereal = [
*#link("https://github.com/winstonyli/cereal")[cereal]* #sym.bullet _C99_ #h(1fr) Sep 2026 -- Present
#cereal-detail
]

#let manifold = [
*manifold* #sym.bullet _Rust, wgpu, CEF, Servo_ #h(1fr) Sep 2026 -- Present
- Built an 85k-line browser: an engine process per tab (Blink, Servo, WebKit) over IPC, with hot-swap.
- Added crash recovery, journaled sessions, and a force-directed tab graph on *wgpu*.
]

#let scratchtape = [
*#link("https://github.com/winstonyli/scratchtape")[scratchtape]* #sym.bullet _Rust, wgpu, cubecl_ #h(1fr) Sep 2026 -- Present
- Built an ML engine from scratch (autodiff, layers, GPU backend); every primitive is gradient-checked.
- Measured *DX12* at 1.6--5.8$times$ lower overhead than Vulkan on small matmuls; up to 900 GFLOP/s.
]

#let plumb = [
*plumb* #sym.bullet _Rust, Windows, NTFS_ #h(1fr) Oct 2026 -- Present
- Built a disk-usage analyzer that reads the *NTFS MFT* to scan a 4.3M-node volume in under 10 s.
- Added live updates from the NTFS change journal and a partial tree while scanning; 200+ tests.
]

#let apps-web = [
*Apps & web* #sym.bullet _TypeScript, Svelte, Tauri_ #h(1fr) Sep 2026 -- Present
- *#link("https://github.com/winstonyli/arrow-game")[arrow-game]*: strict-TS roguelite; 400+ tests; balanced with an evolved bot that lasts 3$times$ longer.
]

#let compilers = [
*Compilers* #sym.bullet _Rust_ #h(1fr) Feb 2025 -- Jun 2026
- *Lambast* (Honors): optimizing compiler for untyped #(sym.lambda)-calculus; UROP Symposium talk.
- *CS 142B project*: SSA compiler via Braun et al.’s *marker algorithm*; CSE, phi simplification.
]

#let project-order = if is-phd {
    (tatic, lambast, renno, cereal)
} else {
    (manifold, scratchtape, tatic, cereal, plumb, apps-web, compilers)
}

#for project in project-order [
    #project

]


#div[== Skills and interests]

*Proficient* in Rust, C / C++, JS / TS, Python, Svelte, Tailwind.

*Familiar* with Git, HTML / CSS, Nix, LaTeX, Typst, Claude Code, Unix systems & shells.

*Acquainted* with most mainstream languages, e.g., C\#, Go, Haskell, Java, Lua, Ruby, SQL.

#if is-phd [
*Research interests* $approx$ programming language design & theory.
]

#div[== Experience]

*Learning Assistant* #sym.bullet UC Irvine #h(1fr) Mar 2025 -- Jun 2026
- Delivered supplementary pedagogy for *Python* and upper-div *Algorithms,* e.g., Master Theorem.
- Spearheaded study sessions to identify and guide students through gaps in understanding.

*Intern* #sym.bullet LGBTQIA+ Identity Commission \@ UC Irvine #h(1fr) Oct 2024 -- Jun 2025
- Led a team of 3 to organize and host themed Gayme Show™.

*Programmer* #sym.bullet Video Game Development Club \@ UC Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with team of 13 to create typing game in *C\#* and *Unity*; led dev of the main UI window.
