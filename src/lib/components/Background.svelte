<script lang="ts">
    import { onMount } from "svelte";
    import { particlesInit } from "@tsparticles/svelte";
    import { loadParallaxMover } from "@tsparticles/move-parallax";
    import { loadTrianglesPreset } from "@tsparticles/preset-triangles";

    particlesInit((engine) =>
        Promise.all([
            loadParallaxMover(engine),
            loadTrianglesPreset(engine),
        ]).then(() => {}),
    );

    let Particles: typeof import("@tsparticles/svelte").default;
    onMount(async () => {
        Particles = (await import("@tsparticles/svelte")).default;
    });
</script>

{#if Particles}
    <Particles
        class="fixed inset-0 -z-10 w-[110vw] h-[110vh]"
        options={{
            preset: "triangles",

            fullScreen: false,
            background: { opacity: 0 },
            backgroundMask: { enable: true, composite: "lighten" },

            particles: {
                number: {
                    value: 200,
                    density: { enable: true },
                },
                color: { value: "random" },
                move: { speed: 0.8 },

                links: {
                    color: { value: "random" },
                },
            },

            interactivity: {
                events: {
                    onHover: {
                        enable: true,
                        parallax: {
                            enable: true,
                            force: 20,
                        },
                    },
                },
            },
        }}
    />
{/if}
