// Remember to check https://typst.app/docs/reference for quirky stuff :)

// Page settings
#set page(margin: (x: 1.0cm, y: 1.0cm))
#set par(justify: true)

// Text settings
#set text(size: 10pt, font: "Linux Biolinum")
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

Passionate 1st-year CS student with experience in full-stack development. Excels in both independent and collaborative settings, quickly adapts to new environments/tools, and is eager to grow through hands-on experience with a dynamic team.

== Education
#divider

*University of California, Irvine* #h(1fr) Sep 2024 -- Jun 2027 (expected) \
B.S. in Computer Science

#v(-6pt)
#stack(
  dir: ltr,
  spacing: 2em,
  [- Linear Algebra],
  [- Test-Driven Development],
  [- Data Structures],
  [- Algorithms],
)


== Experience
#divider

*LGBTQIA+ Identity Commission Intern* #sym.bullet Irvine, CA #h(1fr) Oct 2024 -- ongoing \
- Working with 8 other interns to organize events and facilitate outreach efforts.
- Conducting research on LGBTQIA+ issues to ensure that commission initiatives align with the evolving needs of the community.

== Projects
#divider

*Roanluder* #h(1fr) 2024 \
_A full-stack companion app for League of Legends._
- Building a desktop app that interfaces with the League of Legends process using *Tauri* (*Rust*, *SvelteKit*, and *TypeScript*).
- Creating a robust backend that caches scraped data from wikis and other websites using *Python* and *Firebase*.
- Automated *CI/CD* of *Firebase Cloud Functions* using *GitHub Actions*.

*Wordleverse* #h(1fr) 2024 \
_A collection of Wordle clones for various fandoms._
- Created website in *SvelteKit* + *TypeScript* + *Tailwind CSS*, statically hosted on *GitHub Pages*.
- Integrated a seedable PRNG implementation to deterministically select the "answer of the day" without a backend.
- Architected reusable *Svelte* components for Wordle modes to eliminate duplicate code and improve maintainability.
- Achieved a *\~58%* reduction in asset size through WebP compression techniques.

*winstonyli.github.io* #h(1fr) 2024 \
_My personal website._
- Created website in *SvelteKit* + *TypeScript* + *Tailwind CSS*, statically hosted on *GitHub Pages*.
- Implemented direction-sensitive page sliding transitions using the *View Transitions API* and the *Svelte* transition directive.
- Reduced sizes of served PDFs by *\~70%* by rewriting documents in *Typst* and precompiling them via *GitHub Actions*.

*themendingnote* #sym.bullet Developer #h(1fr) 2023 \
_An organization providing instruments & lessons for socioeconomically disadvantaged groups in my local community._
- Deployed a responsive *SvelteKit* + *TypeScript* website on *Vercel*; applied mobile-first design principles with *Tailwind CSS* to ensure a responsive user experience across various devices.
- Created a custom Google Sheets-based CMS by integrating the *Google Sheets API* to streamline management of volunteer bios.
- Embedded *Google Forms* seamlessly into the website for handling volunteer and donations.

== Activities
#divider

*Video Game Development Club* #sym.bullet Programmer #sym.bullet Irvine, CA #h(1fr) Sep 2024 -- ongoing
- Working with a team of 13 to create a Christmas-themed typing game in *C\#* and *Unity*.
- Facilitating collaboration between departments via *Git* and *Trello*.

*Coding Club* #sym.bullet Co-President #sym.bullet Moraga, CA #h(1fr) Aug 2022 -- May 2024
- Presented engaging weekly lectures and activities; grew membership by 150%.
- Co-led a team of 10 to create a simple 2D *HTML* game with *Socket.IO* networking and member-submitted features.

== Skills
#divider

#columns(
  3,
  [
    *Proficient in*:
    - JavaScript
    - Node.js
    - Python
    - Rust
    - Svelte
    - Tailwind CSS
    - TypeScript

    #colbreak()

    *Familiar with*:
    - C
    - C++
    - Git
    - GitHub Actions
    - HTML + CSS
    - Nix
    - Unix systems & shells (e.g. Bash)

    #colbreak()

    *Acquainted with*:
    - C\#
    - Firebase
    - Go
    - Haskell
    - Java
    - Lua
    - Ruby
    - SQL
  ],
)
