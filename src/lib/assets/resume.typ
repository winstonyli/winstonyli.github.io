#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true)
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
        spacing: 2em,
        ..es.fields().children.filter(e => e != [ ]),
    )
}


#place(top)[= #smallcaps[Winston Li]]

#move(dy: 1.5pt)[#h(1fr); Updated on Oct 4, 2026.]

#link("mailto:liwy3@uci.edu")[liwy3\@uci.edu]
#sym.bullet
#link("tel:+9255886740")[(925) 588-6740]
#sym.bullet
#link("https://winstonyli.github.io")[winstonyli.github.io]
#sym.bullet
winstonyli on
#link("https://github.com/winstonyli")[Github]
and
#link("https://www.linkedin.com/in/winstonyli")[LinkedIn]

#if not is-phd [
    _Builds systems from scratch across PL, ML, and the web._
]



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
    - Compilers
    - Cryptography
]
#hlist[
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
- Checks compiled code against an interpreter and, where possible, a *kernel-checked proof*.
] else [
- Built a *JIT* that caches compiled *WebAssembly* by content hash; a criterion benchmark exposed and fixed an unbounded-memory leak.
]

#let tatic = [
*tatic* #sym.bullet _#(if is-phd [Rust, WebAssembly, dependent type theory] else [Rust, WebAssembly])_ #h(1fr) Mar 2026 -- Present
#tatic-detail
]

#let renno = [
*renno* #sym.bullet _Rust_ #h(1fr) Sep 2026 -- Present
- Built a scripting language on a *CEK machine* with multi-shot *algebraic effect handlers*.
- Added *gradual typing*, row-polymorphic effect checking, and refinement predicates; 400+ tests.
]

#let cereal = [
*cereal* #sym.bullet _C99_ #h(1fr) Sep 2026 -- Present
- Wrote a C99/GNU front end in C99: GCC-compatible preprocessor, macro lint, parser, checker.
- Matches gcc-13 diagnostics on 96% of 3,700+ gcc.dg tests; parallel `-E` is fuzzed for identical output.
]

#let manifold = [
*manifold* #sym.bullet _Rust, wgpu, CEF, Servo_ #h(1fr) Sep 2026 -- Present
- Built a browser running each tab in its own engine process (Blink via CEF/WebView2, Servo, WebKitGTK) over IPC, with in-place engine hot-swap.
- Added crash recovery, journaled sessions, and a force-directed tab graph on *wgpu*.
]

#let scratchtape = [
*scratchtape* #sym.bullet _Rust, wgpu, cubecl_ #h(1fr) Sep 2026 -- Present
- Built an ML engine from scratch (autodiff, layers, GPU backend); every primitive is gradient-checked.
- Measured DX12 at 1.6--5.8$times$ lower per-call overhead than Vulkan on small matmuls (eGPU); up to 900 GFLOP/s.
]

#let apps-web = [
*Apps & web* #sym.bullet _TypeScript, Svelte, Tauri_ #h(1fr) Sep 2026 -- Present
- *arrow-game*: strict-TS browser roguelite, no runtime dependencies; 300+ tests on Bun, Node.
- *lollipoppy*: Tauri (Rust) + Svelte desktop app that drives the League client.
]

#let project-order = if is-phd {
    (tatic, lambast, renno, cereal)
} else {
    (manifold, scratchtape, tatic, apps-web)
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
] else [
*Domains:* compilers & PL, ML & GPU compute, browsers, full-stack web apps, developer tooling.
]

#div[== Experience]

*Learning Assistant* #sym.bullet UC Irvine #h(1fr) Mar 2025 -- Jun 2026
- Delivered supplementary pedagogy for *Python* and upper-div *Algorithms,* e.g., Master Theorem.
- Spearheaded study sessions to identify and guide students through gaps in understanding.

*Intern* #sym.bullet LGBTQIA+ Identity Commission \@ UC Irvine #h(1fr) Oct 2024 -- Jun 2025
- Led a team of 3 to organize and host themed Gayme Show™.

*Programmer* #sym.bullet Video Game Development Club \@ UC Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with team of 13 to create typing game in *C\#* and *Unity*; led dev of the main UI window.
