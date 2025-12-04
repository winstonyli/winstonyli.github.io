#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true)
#set text(size: 12pt) // default is 11pt
#show link: underline

#let divider = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

#let hlist(es) = [
  #v(-6pt)
  #stack(
    dir: ltr,
    spacing: 2em,
    ..es.fields().children.filter(e => e != [ ]),
  )]


#place(top)[= Winston Li]

#h(1fr)
#link("mailto:liwy3@uci.edu")[liwy3\@uci.edu]
#sym.bullet
#link("tel:+9255886740")[(925) 588-6740]
#sym.bullet
#link("https://winstonyli.github.io")[Website]
#sym.bullet
#link("https://github.com/winstonyli")[GitHub]
#sym.bullet
#link("https://www.linkedin.com/in/winstonyli")[LinkedIn]

Resume updated on December 4th, 2025.

*Interested in*: programming language design and theory; formal methods; program analysis


== Education
#divider

*University of California, Irvine* #h(1fr) Sep 2024 -- Jun 2026 / 2027 \
B.S. in Computer Science, 3.97 / 4.00 GPA
#hlist[
  - Data Structures
  - Algorithms
  - Quantum Computation
]


== Experience
#divider

*Learning Assistant* #sym.bullet University of California, Irvine #h(1fr) Mar 2025 -- ongoing \
- Delivered effective pedagogy in *Intermediate Programming* and *Design & Analysis of Algorithms*.
- Spearheaded study sessions to guide students and identify gaps in understanding.
- Coordinated with professors via weekly meetings to enhance student learning.

*LGBTQIA+ Identity Commission Intern* #sym.bullet University of California, Irvine #h(1fr) Oct 2024 -- Jun 2025 \
- Facilitated outreach efforts in collaboration with 8 other interns.
- Led a team of 3 to organize and host an LGBTQIA+-themed Gayme Show™.
- Conducted research on LGBTQIA+ issues to ensure commission initiatives align with evolving needs of the community.

*Video Game Development Club* #sym.bullet Programmer #sym.bullet University of California, Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with a team of 13 to create a typing game in *C\#* and *Unity*.
- Led work on main UI window, e.g., responsive user input handling and real-time feedback.
- Used *Git* and *Trello* to streamline collaboration between departments.


== Projects
#divider

*Lambast* #sym.bullet ICS Honors Program & UROP project #h(1fr) ongoing \
- Creating a whole-program optimizing compiler for the untyped lambda calculus.

*Wordleverse* #h(1fr) 2024 \
- Leveraged *SvelteKit*, *TypeScript*, *Tailwind CSS*, and *GitHub Pages* to create a collection of Wordle clones.
- Integrated a seedable PRNG implementation to deterministically select the "answer of the day" without a backend.
- Achieved a *\~58%* reduction in asset size through WebP compression techniques.

*winstonyli.github.io* #h(1fr) 2024 \
- Built a personal website with *SvelteKit*, *TypeScript*, *Tailwind CSS*, and *GitHub Pages*.
- Implemented directional page transitions using *View Transitions API* and *Svelte* transitions.
- Reduced sizes of served PDFs by *\~70%* by rewriting documents in *Typst* and precompiling via *GitHub Actions*.

== Languages & tools
#divider

#columns(
  3,
  [
    *Proficient in*:
    - Rust
    - JavaScript / TypeScript
    - Python
    - Svelte
    - Tailwind CSS

    #colbreak()

    *Familiar with*:
    - C / C++
    - Git
    - GitHub Actions
    - HTML / CSS
    - Nix
    - Unix systems & shells, e.g., Bash

    #colbreak()

    *Acquainted with*:
    - C\#
    - Go
    - Haskell
    - Java
    - Lua
    - Ruby
    - SQL
  ],
)
