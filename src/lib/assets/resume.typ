// Remember to check https://typst.app/docs/reference for quirky stuff :)

// Page settings
#set page(margin: (x: 1.0cm, y: 1.0cm))
#set par(justify: true)

// Text settings
#set text(size: 10pt, font: "Linux Biolinum")
#show link: underline

#let divider() = {v(-3pt); line(length: 100%); v(-5pt)}

= Winston Li

#link("mailto:liwy3@uci.edu")[liwy3\@uci.edu] |
#link("https://github.com/winstonyli")[github.com/winstonyli] | #link("https://winstonyli.github.io")[winstonyli.github.io]

Passionate 1st-year CS student with experience in full-stack development. Excels in both independent and collaborative settings, quickly adapts to new environments/tools, and is eager to grow through hands-on experience with a dynamic team.

== Education
#divider()

*University of California, Irvine* #h(1fr) Sep 2024 -- Jun 2028 (expected) \
B.S. in Computer Science
- Linear Algebra
- Test-Driven Development
- Data Structures
- Algorithms

== Experience
#divider()

*LGBTQIA+ Identity Commission Intern* | Irvine, CA #h(1fr) Oct 2024 -- ongoing \
- Working with 8 other interns to organize events and facilitate outreach efforts.
- Conducting research on LGBTQIA+ issues to ensure that commission initiatives align with the evolving needs of the community.

== Projects
#divider()

*Roanluder* #h(1fr) 2024 \
A lightweight, cross-platform companion app for League of Legends. \
- Building a desktop app that connects to the League of Legends process using *Tauri* (*Rust*, *SvelteKit*, and *JavaScript/TypeScript*).
- Creating a robust backend that caches scraped data from wikis and other websites using *Python* and *Firebase*.
- Automated continuous deployment of *Firebase* Cloud Functions using *GitHub Actions*.

*Wordleverse* | #link("https://winstonyli.github.io/wordleverse")[winstonyli.github.io/wordleverse] #h(1fr) 2024 \
A collection of Wordle clones for various fandoms. \
- Designed an accessible, mobile-first UI using *SvelteKit* and *JavaScript/TypeScript*.
- Created components for each Wordle mode to eliminate copy-and-pasted code between clones.
- Statically hosted Wordleverse on *GitHub Pages*; integrated a third-party PRNG implementation to deterministically choose the "answer of the day."

// *Talculator* | #link("https://winstonyli.github.io/talculator")[winstonyli.github.io/talculator] #h(1fr) 2024 \
// A simple 3D grapher. \
// - Designed an accessible, mobile-first UI using *SvelteKit* and *JavaScript/TypeScript*.
// - Integrated Three.js, MathLive, and Compute Engine for equation rendering, accessible equation input, and symbolic computation.

// *Hooliganism* | #link("https://hooliganism.vercel.app")[hooliganism.vercel.app] #h(1fr) 2023 \
// A punk rock lyric generator built in 3 days. \
// - Designed an accessible, mobile-first UI using *SvelteKit* and *JavaScript/TypeScript*.
// - Integrated *DuckDuckGo* and *OpenAI APIs* to acquire relevant news articles and generate content.

*themendingnote* | Co-Founder, Developer #h(1fr) 2023 \
An organization dedicated to providing used instruments and lessons for socioeconomically disadvantaged communities. \
- Developed a website with a custom Google Sheets-based CMS to streamline management of volunteer bios; deployed on *Vercel*.
- Applied mobile-first design principles to ensure a responsive user experience across various devices.
- Collected \~\$10k of donations in used musical instruments through social media and in-person outreach efforts.

== Activities
#divider()

*Video Game Development Club* | Programmer | Irvine, CA #h(1fr) Sep 2024 -- ongoing \
- Working with a team of 13 to create a game in *Unity/C\#*.
- Utilizing *Git* and *Jira* to facilitate collaboration between departments.

*Coding Club* | Co-President | Moraga, CA #h(1fr) Aug 2022 -- May 2024 \
- Presented engaging weekly lectures and activities; grew membership by 150%.
- Co-led a team of 10+ to create a simple 2D web game with Socket.IO networking and member-submitted features.
- Hosted a command line game jam with 8+ submissions.

== Skills
#divider()

#columns(3, gutter: 1cm, [
  *Proficient in*: \ HTML \ JavaScript/TypeScript \ Python \ Rust \ Svelte/SvelteKit \ Tailwind CSS
  #colbreak()
  *Familiar with*: \ C/C++ \ CSS \ Git \ Nix \ Unix systems & shells
  #colbreak()
  *Acquainted with*: \ C\# \ Go \ Haskell \ Java \ Lua \ Ruby \ SQL
])