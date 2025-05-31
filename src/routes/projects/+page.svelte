<script lang="ts">
    import IconIdea from "~icons/line-md/document-code";
    import hooliganismSrc from "$lib/assets/projects/hooliganism.webp";
    import rennoSrc from "$lib/assets/projects/renno.webp";
    import talculatorSrc from "$lib/assets/projects/talculator.webp";
    import themendingnoteSrc from "$lib/assets/projects/themendingnote.webp";
    import wordleverseSrc from "$lib/assets/projects/wordleverse.webp";
    import Project from "$lib/components/Project.svelte";
</script>

<div class="prose">
    <h1>Projects</h1>

    <div class="divider"><IconIdea class="size-24" /></div>

    <h2>Current projects</h2>

    <p>
        There's a 99% chance that the project(s) directly below are
        programming-language-related.
    </p>

    <p></p>
</div>

<Project
    title="Rhythm"
    blurb="A proof assistant language that unifies dependent types, an algebraic-ish effect system, and resource complexity analysis."
    fields={["PLDT"]}
    tools={["Rust"]}
/>

<div class="prose">
    <p></p>

    <h2>Other projects</h2>

    <p>
        Uncurated and inexhaustive. Not my best work, but it's fun to record my
        progress somewhere. Mostly web-related, as I find them much quicker to
        churn out compared to my longer-term projects.
    </p>

    <p></p>
</div>

<div class="grid gap-3 lg:grid-cols-2">
    <!-- TODO: inline -->
    {#each [{ title: "Roanluder", blurb: "A full-stack League of Legends companion app. Create (or scrape) and auto-import builds.", fields: ["Full-Stack", "UI/UX", "Web"], tools: ["Rust", "Svelte", "TypeScript"] }, { title: "Renno 2: Electric Boogaloo", blurb: "A proof-of-concept functional language that embraces incremental computation and effortless concurrency.", fields: ["PLDT", "UI/UX", "Web"], tools: ["Rust", "Svelte", "TypeScript"] }, { title: "Wordleverse", src: wordleverseSrc, href: "https://winstonyli.github.io/wordleverse", date: "Fall '24", blurb: "Find the answer of the day! A collection of LoLdle-esque Wordle clones statically hosted on Github Pages.", fields: ["UI/UX", "Web"], tools: ["Svelte", "TypeScript"] }, { title: "Talculator", src: talculatorSrc, href: "https://winstonyli.github.io/talculator", date: "Spring '24", blurb: "A simple 3D grapher, supporting color-coded equations and symbolic computation.", fields: ["3D", "UI/UX", "Web"], tools: ["Three.js", "Svelte", "TypeScript"] }, { title: "Hooliganism", src: hooliganismSrc, href: "https://hooliganism.vercel.app", date: "Winter '24", blurb: "A punk rock lyric generator built in 3 days for a high school history project. Powered by DuckDuckGo and OpenAI APIs.", fields: ["AI", "UI/UX", "Web"], tools: ["Svelte", "TypeScript"] }, { title: "themendingnote", src: themendingnoteSrc, href: "https://www.themendingnote.org", date: "Summer '23", blurb: "An organization dedicated to providing free used instruments and lessons for socioeconomically-disadvantaged groups in my local community.", fields: ["UI/UX", "Web"], tools: ["Svelte", "TypeScript"] }, { title: "Renno", src: rennoSrc, date: "Spring '23", blurb: "My first language with a complete compiler pipeline: lexing, parsing, name resolution, static type checking, multi-stage lowering, a JS backend, error reporting, and an incomplete web demo.", fields: ["PLDT"], tools: ["Rust", "Svelte", "TypeScript"] }] as project}
        <Project {...project} />
    {/each}
</div>
