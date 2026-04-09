#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true)
#set text(size: 13pt)
#show link: underline

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

#move(dy: 1.5pt)[#h(1fr); Updated on Apr 9, 2026.]

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
  - UROP Fellow
  - Data Structures
  - Algorithms
  - Software Eng.
  - Compilers
]
#hlist[
  - Formal Lang. & Automata
  - Quantum Computation
  - Cryptography
]

#div[== Projects]

*Lambast* #sym.bullet Honors research project using Rust #h(1fr) Feb 2025 -- ongoing
- Supervised by Prof. Alberto Krone-Martins.
- Building a whole-program optimizing compiler for untyped #(sym.lambda)-calculus.
- Researching which compiler optimizations actually benefit lazy functional languages in practice.

*Checkers AI* #sym.bullet class project using Python, C++, and Shell #h(1fr) Sep 2025 -- Dec 2025
- Built Checkers AI with partner using *Monte Carlo techniques*.
- Created auxiliary *Python* and *Shell* scripts for testing, benchmarking, and profiling.

*Misc. websites* #sym.bullet personal projects using Svelte, TypeScript, Tailwind, and GitHub Pages #h(1fr) 2023 -- 2024
- Reduced served asset sizes by *58-70%* via precompilation and WebP compression techniques.
- Implemented directional page transitions with *View Transitions API* and *Svelte* transitions.
- Statically hosted Wordles; integrated seedable PRNG to select "answer of the day" w/o backend.


#div[== Skills and interests]

*Proficient* in Rust, C / C++, JS / TS, Python, Svelte, Tailwind.

*Familiar* with Git, HTML / CSS, Nix, LaTeX, Typst, Unix systems & shells.

*Acquainted* with most mainstream languages, e.g., C\#, Go, Haskell, Java, Lua, Ruby, SQL.

*Research interests* $approx$ programming language design & theory.

#div[== Experience]

*Learning Assistant* #sym.bullet UC Irvine #h(1fr) Mar 2025 -- ongoing
- Delivered effective supplementary pedagogy for *Python* and upper-div *Algorithms,* such as alternate explanation of Master Theorem.
- Spearheaded study sessions to identify and guide students through gaps in understanding.
- Coordinated with professors via weekly meetings to enhance student learning.

*Intern* #sym.bullet LGBTQIA+ Identity Commission \@ UC Irvine #h(1fr) Oct 2024 -- Jun 2025
- Facilitated outreach efforts to students and orgs in collaboration with 8 other interns.
- Led a team of 3 to organize and host themed Gayme Show™.

*Programmer* #sym.bullet Video Game Development Club \@ UC Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with team of 13 to create typing game in *C\#* and *Unity*.
- Led dev of main UI window, e.g., responsive user input handling and real-time feedback.
- Leveraged *Git* and *Trello* to streamline collaboration between departments.
