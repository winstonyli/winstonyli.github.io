<script lang="ts">
    import IconIdea from '~icons/line-md/document-code';
    import hooliganismSrc from '$lib/assets/projects/hooliganism.webp';
    import rennoSrc from '$lib/assets/projects/renno.webp';
    import talculatorSrc from '$lib/assets/projects/talculator.webp';
    import themendingnoteSrc from '$lib/assets/projects/themendingnote.webp';
    import wordleverseSrc from '$lib/assets/projects/wordleverse.webp';
    import Project from '$lib/components/Project.svelte';
</script>

<h1>Projects</h1>

<div class="divider"><IconIdea class="size-24" /></div>

<p>Some older projects are included as a record of my progress.</p>

<div class="flex flex-wrap gap-3">
    <Project
        title="Lambast"
        status="current ICS Honors & UROP project"
        blurb="A whole-program optimizing compiler for the untyped lambda calculus."
        fields={['PL']}
        tools={['Rust']}
    />

    <Project
        title="Rhythm"
        status="on the backburner"
        blurb="A proof assistant language that unifies dependent types, an algebraic-ish effect system, and resource complexity analysis."
        fields={['PL']}
        tools={['Rust']}
    />

    <Project
        title="Wordleverse"
        status="completed in Fall '24"
        blurb="A collection of Wordle clones on Github Pages."
        src={wordleverseSrc}
        href="https://winstonyli.github.io/wordleverse"
        fields={['UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Talculator"
        status="completed in Spring '24"
        blurb="A simple 3D grapher."
        src={talculatorSrc}
        href="https://winstonyli.github.io/talculator"
        fields={['3D', 'UI/UX', 'Web']}
        tools={['Three.js', 'Svelte', 'TypeScript']}
    />

    <Project
        title="Hooliganism"
        status="completed in Winter '24"
        blurb="A punk rock lyric generator built in 3 days for a high school history project."
        src={hooliganismSrc}
        href="https://hooliganism.vercel.app"
        fields={['AI', 'UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Roanluder"
        status="on hiatus"
        blurb="A full-stack League of Legends companion app."
        fields={['Full Stack']}
        tools={['Rust', 'Svelte', 'TypeScript']}
    />

    <Project
        title="themendingnote"
        status="completed in Summer '23"
        blurb="A website for a local organization. Link now defunct."
        src={themendingnoteSrc}
        href="https://www.themendingnote.org"
        fields={['UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Renno"
        status="completed in Spring '23"
        blurb="My first language with a complete pipeline, including static analysis and multi-stage lowering."
        src={rennoSrc}
        fields={['PL']}
        tools={['Rust', 'Svelte', 'TypeScript']}
    />
</div>
