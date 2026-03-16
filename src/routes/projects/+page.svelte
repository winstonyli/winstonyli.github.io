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

<p>some older projects are included for funsies.</p>

<div class="flex flex-wrap gap-3">
    <Project
        title="Lambast"
        status="current ICS Honors & UROP project"
        blurb="Optimizing compiler for the untyped lambda calculus."
        fields={['PL']}
        tools={['Rust']}
    />

    <Project
        title="Rhythm"
        status="nvm i have a better idea"
        blurb="Proof assistant language that unifies dependent types, an algebraic-ish effect system, and resource complexity analysis."
        fields={['PL']}
        tools={['Rust']}
    />

    <Project
        title="Wordleverse"
        status="completed in Fall '24"
        blurb="Wordle clones on Github Pages."
        src={wordleverseSrc}
        href="https://winstonyli.github.io/wordleverse"
        fields={['UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Talculator"
        status="completed in Spring '24"
        blurb="Simple 3D grapher."
        src={talculatorSrc}
        href="https://winstonyli.github.io/talculator"
        fields={['3D', 'UI/UX', 'Web']}
        tools={['Three.js', 'Svelte', 'TypeScript']}
    />

    <Project
        title="Hooliganism"
        status="completed in Winter '24"
        blurb="High school history project made in 3 days."
        src={hooliganismSrc}
        href="https://hooliganism.vercel.app"
        fields={['AI', 'UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Roanluder"
        status="on hiatus because i kept restarting it"
        blurb="Full-stack League of Legends companion app."
        fields={['Full Stack']}
        tools={['Rust', 'Svelte', 'TypeScript']}
    />

    <Project
        title="themendingnote"
        status="completed in Summer '23"
        blurb="Website for local organization. Link now defunct."
        src={themendingnoteSrc}
        href="https://www.themendingnote.org"
        fields={['UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Renno"
        status="completed in Spring '23"
        blurb="Baby's first language (with static analysis and multi-stage lowering)."
        src={rennoSrc}
        fields={['PL']}
        tools={['Rust', 'Svelte', 'TypeScript']}
    />
</div>
