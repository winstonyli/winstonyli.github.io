#set page(margin: (x: 1.0cm, y: 1.0cm))
#set par(justify: true)
#show link: underline

#let divider = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}


= Winston Li

#link("mailto:liwy3@uci.edu")[liwy3\@uci.edu]
#sym.bullet
#link("tel:+9255886740")[(925) 588-6740]
#sym.bullet
#link("https://winstonyli.github.io")[Website]
#sym.bullet
#link("https://github.com/winstonyli")[GitHub]
#sym.bullet
#link("https://www.linkedin.com/in/winstonyli")[LinkedIn]


== Education
#divider

*University of California, Irvine* #h(1fr) Sep 2024 -- Jun 2026 / 2027 \
B.S. in Computer Science, 3.97 / 4.00 GPA

#v(-6pt)
#stack(
  dir: ltr,
  spacing: 2em,
  [- Linear Algebra],
  [- Discrete Math],
  [- Test-Driven Development],
  [- Data Structures],
  [- Algorithms],
)


== Experience
#divider

*Learning Assistant* #sym.bullet Irvine, CA #h(1fr) Mar 2025 -- Jun 2025 \
_I&C SCI 33 (Intermediate Programming in Python)_
- Guided students and identified common gaps in understanding via regular study sessions.
- Met weekly with other LAs, TAs, and professors to discuss course material and expectations.

*LGBTQIA+ Identity Commission Intern* #sym.bullet Irvine, CA #h(1fr) Oct 2024 -- Jun 2025 \
- Facilitated outreach efforts in collaboration with 8 other interns.
- Led a team of 3 to organize and host an LGBTQIA+-themed Gayme Show™.
- Conducted research on LGBTQIA+ issues to ensure commission initiatives align with evolving needs of the community.

== Projects
#divider

*Rhythm* #h(1fr) 2025 \
- Creating a novel proof assistant programming language unifying *dependent types*, *algebraic effects*, and *resource complexity analysis*.

*Wordleverse* #h(1fr) 2024 \
- Leveraged *SvelteKit*, *TypeScript*, *Tailwind CSS*, and *GitHub Pages* to create a collection of Wordle clones.
- Integrated a seedable PRNG implementation to deterministically select the "answer of the day" without a backend.
- Architected reusable *Svelte* components for Wordle modes to eliminate duplicate code and improve maintainability.
- Achieved a *\~58%* reduction in asset size through WebP compression techniques.

*winstonyli.github.io* #h(1fr) 2024 \
- Built a personal website with *SvelteKit*, *TypeScript*, *Tailwind CSS*, and *GitHub Pages*.
- Implemented directional page transitions using *View Transitions API* and *Svelte* transitions.
- Reduced sizes of served PDFs by *\~70%* by rewriting documents in *Typst* and precompiling via *GitHub Actions*.

== Activities
#divider

*Video Game Development Club* #sym.bullet Programmer #sym.bullet Irvine, CA #h(1fr) Sep 2024 -- May 2025
- Worked with a team of 13 to create a typing game in *C\#* and *Unity*.
- Led work on functionality of main UI window, including responsive user input handling and real-time feedback.
- Used *Git* and *Trello* to streamline collaboration between departments.

*Coding Club* #sym.bullet Co-President #sym.bullet Moraga, CA #h(1fr) Aug 2022 -- May 2024
- Presented engaging weekly lectures and activities; grew membership by 150%.
- Co-led a team of 10 to create a 2D *HTML* game with *Socket.IO* networking.

== Skills & interests
#divider


*Interested in*: programming language design, theory, and implementation; formal methods; program analysis

#columns(
  3,
  [
    *Proficient in*:
    - JavaScript / TypeScript
    - Python
    - Rust
    - Svelte
    - Tailwind CSS

    #colbreak()

    *Familiar with*:
    - C / C++
    - Git
    - GitHub Actions
    - HTML + CSS
    - Nix
    - Unix systems & shells (e.g. Bash)

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
