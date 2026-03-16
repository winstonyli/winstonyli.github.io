<script lang="ts">
    import { onMount } from 'svelte';
    import { tsParticles } from '@tsparticles/engine';
    import { loadTrianglesPreset } from '@tsparticles/preset-triangles';

    let particles: HTMLDivElement;

    onMount(async () => {
        // @ts-expect-error funky dependencies
        await loadTrianglesPreset(tsParticles);
        await tsParticles.load({
            element: particles,
            options: {
                fullScreen: { zIndex: -10 },
                preset: 'triangles',
                background: { opacity: 0 },
                particles: {
                    number: {
                        value: 200,
                        density: { enable: true },
                    },
                    color: { value: 'random' },
                    shadow: { enable: true },
                    move: {
                        speed: 0.8,
                        attract: { enable: true },
                    },
                    links: {
                        color: { value: 'random' },
                        triangles: { opacity: 0.01 },
                    },
                },
            },
        });
    });
</script>

<div bind:this={particles}></div>
