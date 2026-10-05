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

<h2>2026</h2>

<div class="flex flex-wrap gap-3">
    <Project
        title="tatic"
        status="Mar 2026 – present"
        blurb="JIT for a higher-order language: caches compiled WebAssembly by content hash and checks it against an interpreter and, where possible, a kernel-checked proof."
        href="https://github.com/winstonyli/tatic"
        fields={['PL']}
        tools={['Rust', 'WebAssembly']}
    />

    <Project
        title="scratchtape"
        status="Sep 2026 – present"
        blurb="ML engine from scratch: autodiff, layers, and a wgpu GPU backend, with every primitive gradient-checked."
        href="https://github.com/winstonyli/scratchtape"
        fields={['AI', 'GPU']}
        tools={['Rust', 'wgpu']}
    />

    <Project
        title="renno"
        status="Sep 2026 – present"
        blurb="Scripting language on a CEK machine with algebraic effect handlers, gradual typing, and refinement predicates."
        href="https://github.com/winstonyli/renno"
        fields={['PL']}
        tools={['Rust']}
    />

    <Project
        title="cereal"
        status="Sep 2026 – present"
        blurb="C99 compiler front end written in C99; matches gcc-13 diagnostics on 96% of 3,700+ gcc.dg tests."
        href="https://github.com/winstonyli/cereal"
        fields={['PL']}
        tools={['C99']}
    />

    <Project
        title="arrow-game"
        status="Sep 2026 – present; playable demo"
        blurb="Browser archer roguelite in strict TypeScript with no runtime dependencies."
        href="https://winstonyli.github.io/arrow-game/"
        fields={['Game', 'Web']}
        tools={['TypeScript', 'Vite']}
    />

    <Project
        title="manifold"
        status="Sep 2026 – present; private for now"
        blurb="Browser where each tab runs in its own engine process (Blink, Servo, or WebKitGTK), with in-place engine hot-swap."
        fields={['Web', 'GPU']}
        tools={['Rust', 'wgpu']}
    />

    <Project
        title="lollipoppy"
        status="Sep 2026 – present; private for now"
        blurb="League of Legends companion desktop app for builds, notes, and champ select."
        fields={['Full Stack']}
        tools={['Tauri', 'Svelte']}
    />
</div>

<h2>Older</h2>

<p>some older projects are included for funsies.</p>

<div class="flex flex-wrap gap-3">
    <Project
        title="Lambast"
        status="completed Jun 2026 (ICS Honors & UROP project)"
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
        blurb="Wordle clones on Github Pages with precompiled, WebP-compressed assets. Seedable PRNG picks the answer of the day with no backend."
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
        title="themendingnote"
        status="completed in Summer '23"
        blurb="Website for local organization. Link now defunct."
        src={themendingnoteSrc}
        fields={['UI/UX', 'Web']}
        tools={['Svelte', 'TypeScript']}
    />

    <Project
        title="Renno (2023)"
        status="completed in Spring '23"
        blurb="Baby's first language (with static analysis and multi-stage lowering)."
        src={rennoSrc}
        fields={['PL']}
        tools={['Rust', 'Svelte', 'TypeScript']}
    />
</div>
