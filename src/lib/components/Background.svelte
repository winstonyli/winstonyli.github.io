<script lang="ts">
    import { onMount } from 'svelte';
    import { tsParticles } from '@tsparticles/engine';
    import { loadTrianglesPreset } from '@tsparticles/preset-triangles';

    let particles: HTMLDivElement;

    onMount(async () => {
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
                    paint: {
                        fill: { color: { value: 'random' }, opacity: 0.1 },
                    },

                    effect: { type: 'shadow' },
                    move: { speed: 0.2 },
                    links: {
                        color: { value: 'random' },
                        opacity: 0.2,
                        triangles: { opacity: 0.01 },
                    },
                },
            },
        });
    });
</script>

<div bind:this={particles}></div>
