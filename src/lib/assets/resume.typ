#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true, spacing: 1em)
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
    - Graduated in 2 years
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

#let lambast = [
*Lambast* #sym.bullet _Honors research project using Rust_ #h(1fr) Feb 2025 -- Jun 2026
- Built a whole-program optimizing compiler for untyped #(sym.lambda)-calculus using *closure conversion* and *De Bruijn indices*.
- Generated randomized benchmark terms via Grygiel & Lescanne's binary lambda-term enumeration; presented at the *UCI UROP Symposium*.
]

#let tatic = [
*#link("https://github.com/winstonyli/tatic")[tatic]* #sym.bullet _Rust, WebAssembly, dependent type theory_ #h(1fr) Mar 2026 -- Present
- Build a *JIT* for a higher-order language, caching compiled *WebAssembly* by content hash.
- Gate installation on agreement with an interpreter and a *kernel-checked proof* of the compiler model; unprovable terms stay interpreted.
- Add an independent checker replaying the specializer, and translation validation from the IR.
- Fuzz the JIT against the interpreter: 1000 seeds $times$ 12 trials, zero mismatches, planted bugs caught.
- Mine rewrite rules from laws the prover couldn't close; seeded libraries need 3--5$times$ fewer machine proofs (one theory).
]

#let renno = [
*#link("https://github.com/winstonyli/renno")[renno]* #sym.bullet _Rust_
- Build a scripting language on a *CEK machine* with multi-shot *algebraic effect handlers*.
- Add *gradual typing*, run-time checks, effect rows, refinements, length-indexed vectors; 400+ tests.
]

#let cereal = [
*#link("https://github.com/winstonyli/cereal")[cereal]* #sym.bullet _C99_
- Write a C99/GNU front end in C99: preprocessor, macro lint, parser, checker, *language server*.
- Match gcc-13 diagnostics on 3,908/3,910 runnable gcc.dg tests; fuzzed parallel `-E` for same output.
]

#let manifold = [
*manifold* #sym.bullet _Rust, wgpu, CEF, Servo_
- Build an 85k-line browser: an engine process per tab (Blink, Servo, WebKit) over IPC, with hot-swap.
- Add crash recovery, journaled sessions, and a force-directed tab graph on *wgpu*.
]

#let scratchtape = [
*#link("https://github.com/winstonyli/scratchtape")[scratchtape]* #sym.bullet _Rust, wgpu, cubecl_
- Build an ML engine from scratch (autodiff, layers, GPU backend); every primitive is gradient-checked.
- Measure *DX12* at 1.6--5.8$times$ lower overhead than Vulkan on small matmuls; up to 900 GFLOP/s.
]

#let plumb = [
*plumb* #sym.bullet _Rust, Windows, NTFS_
- Build a disk-usage analyzer that reads the *NTFS MFT* to scan a 4.3M-node volume in under 10 s.
- Add live updates from the NTFS change journal and a partial tree while scanning; 200+ tests.
]

#let arrow-game = [
*#link("https://github.com/winstonyli/arrow-game")[arrow-game]* #sym.bullet _TypeScript, Svelte, Tauri_
- Build a strict-TS roguelite; 400+ tests; balance it with an evolved bot that lasts 3$times$ longer.
]

#let compilers = [
*Languages & compilers* #sym.bullet _Rust, C99, WebAssembly_ #h(1fr) Feb 2023 -- Present
- *#link("https://github.com/winstonyli/tatic")[tatic]*: Build a *JIT* caching *WebAssembly* by content hash; installs code only if it matches an interpreter and has a *machine-checked proof* of the compiler model.
  - Fuzz it against the interpreter (\~12k trials, no mismatches); caught a checker overflow and a leak.
- *#link("https://github.com/winstonyli/cereal")[cereal]*: Write a C99 front end + *language server*; match gcc-13 on 3,908/3,910 gcc.dg tests.
- *#link("https://github.com/winstonyli/renno")[renno]*: Build a CEK-machine language with *algebraic effects* and gradual typing; 400+ tests.
- *Lambast* (2025, Honors): Wrote optimizing #(sym.lambda)-calculus compiler (*closure conversion*); UROP talk.
- *CS 142B project*: Built an SSA compiler (Braun et al.’s *marker algorithm*); CSE, phi simplification.
- *#link("https://github.com/winstonyli/renno-legacy")[renno]* (2023, prototype): Wrote a Rust-to-JS compiler with name resolution and a type checker.
]

#let project-order = if is-phd {
    (tatic, lambast, renno, cereal)
} else {
    (compilers, scratchtape, manifold, plumb, arrow-game)
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
