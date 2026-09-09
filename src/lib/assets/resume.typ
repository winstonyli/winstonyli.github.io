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

#move(dy: 1.5pt)[#h(1fr); Updated on Sep 8, 2026.]

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

#let checkers-ai = [
*Checkers AI* #sym.bullet _class project using Python, C++, Shell_ #h(1fr) Sep 2025 -- Dec 2025
- Built Checkers AI with partner using *Monte Carlo techniques*; ranked in the *top 30%* of the class tournament.
- Created auxiliary *Python* and *Shell* scripts for testing, benchmarking, and profiling.
]

#let misc-websites = [
*Misc. websites* #sym.bullet _personal projects using Svelte, TS, Tailwind, GitHub Pages_ #h(1fr) 2023 -- 2024
- Reduced served asset sizes by *58-70%* via precompilation and WebP compression techniques.
- Implemented directional page transitions with *View Transitions API* and *Svelte* transitions.
- Statically hosted Wordles; integrated seedable PRNG to select "answer of the day" w/o backend.
]

#let project-order = if is-phd {
    (lambast, checkers-ai, misc-websites)
} else {
    (misc-websites, checkers-ai, lambast)
}

#for project in project-order [
    #project

]


#div[== Skills and interests]

*Proficient* in Rust, C / C++, JS / TS, Python, Svelte, Tailwind.

*Familiar* with Git, HTML / CSS, Nix, LaTeX, Typst, Unix systems & shells.

*Acquainted* with most mainstream languages, e.g., C\#, Go, Haskell, Java, Lua, Ruby, SQL.

#if is-phd [
*Research interests* $approx$ programming language design & theory.
]

#div[== Experience]

*Learning Assistant* #sym.bullet UC Irvine #h(1fr) Mar 2025 -- Jun 2026
- Delivered supplementary pedagogy for *Python* and upper-div *Algorithms,* e.g., alternate explanation of Master Theorem.
- Spearheaded study sessions to identify and guide students through gaps in understanding.

*Intern* #sym.bullet LGBTQIA+ Identity Commission \@ UC Irvine #h(1fr) Oct 2024 -- Jun 2025
- Facilitated outreach efforts to students and orgs in collaboration with 8 other interns.
- Led a team of 3 to organize and host themed Gayme Show™.

*Programmer* #sym.bullet Video Game Development Club \@ UC Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with team of 13 to create typing game in *C\#* and *Unity*.
- Led dev of main UI window, e.g., responsive user input handling and real-time feedback.
- Leveraged *Git* and *Trello* to streamline collaboration between departments.
