#set page(margin: (x: 1cm, y: 1cm))
#set par(justify: true)
#set text(size: 12pt)
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


#place(top)[#smallcaps[= Winston Li]]

#move(dy: 1.5pt)[
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
]

*Research interests* hover around programming language design and theory, e.g., formal methods and analysis. Quick learner, unique thinker, and team player. (Resume last updated Dec 15, 2025.)


#div[== Education]

*UC Irvine* #sym.bullet B.S. in Computer Science, 3.97 / 4.00 GPA #h(1fr) Sep 2024 -- Jun 2026 / 2027
#hlist[
  - Data Structures
  - Algorithms
  - Software Engineering
]
#hlist[
  - Compilers
  - Formal Languages & Automata
  - Quantum Computation
]

#div[== Projects]

*Lambast* #sym.bullet research project using Rust #h(1fr) Feb 2025 -- ongoing
- Building a whole-program optimizing compiler for untyped #(sym.lambda)-calculus as project for ICS Honors Program and Undergraduate Research Opportunities Program.
- Researching which compiler optimizations actually benefit lazy functional languages in practice and by how much.

*Checkers AI* #sym.bullet class project using Python, C++, and Shell #h(1fr) Sep 2025 -- Dec 2025
- Built Checkers AI with partner using *Monte Carlo techniques*.
- Created auxiliary *Python* and *Shell* scripts for testing, benchmarking, and profiling.

*Misc. websites* #sym.bullet personal projects using Svelte, TypeScript, Tailwind, and GitHub Pages #h(1fr) 2023 -- 2024
- Reduced served asset sizes by *58-70%* via precompilation and WebP compression techniques.
- Implemented directional page transitions with *View Transitions API* and *Svelte* transitions.
- Statically hosted Wordles; integrated seedable PRNG to select "answer of the day" w/o backend.


#div[== Languages and tools]

- *Proficient* in Rust, JavaScript / TypeScript, Python, Svelte, and Tailwind.
- *Familiar* with C / C++, Git, GitHub Actions, HTML, CSS, Nix, LaTeX, Typst, and Unix systems and shells.
- *Acquainted* with most mainstream languages, e.g., C\#, Go, Haskell, Java, Lua, Ruby, and SQL.


#div[== Experience]

*Learning Assistant* #sym.bullet UC Irvine #h(1fr) Mar 2025 -- ongoing
- Delivered effective supplementary pedagogy for *Python* and upper-div *Algorithms*.
- Spearheaded study sessions to guide students through identified gaps in understanding.
- Coordinating with professors via weekly meetings to enhance student learning.

*Intern* #sym.bullet LGBTQIA+ Identity Commission \@ UC Irvine #h(1fr) Oct 2024 -- Jun 2025
- Facilitated outreach efforts to students and orgs in collaboration with 8 other interns.
- Led a team of 3 to organize and host themed Gayme Show™.

*Programmer* #sym.bullet Video Game Development Club \@ UC Irvine #h(1fr) Sep 2024 -- May 2025
- Worked with a team of 13 to create a typing game in *C\#* and *Unity*.
- Led dev of main UI window, e.g., responsive user input handling and real-time feedback.
- Leveraged *Git* and *Trello* to streamline collaboration between departments.
