<script lang="ts">
    import Particles, { particlesInit } from '@tsparticles/svelte';
    import { loadParallaxMover } from '@tsparticles/move-parallax';
    import { loadTrianglesPreset } from '@tsparticles/preset-triangles';

    particlesInit(async (engine) => {
        await Promise.all([loadParallaxMover(engine), loadTrianglesPreset(engine)]);
    });
</script>

<Particles
    class="fixed inset-0 -z-10 h-[110vh] w-[110vw]"
    options={{
        preset: 'triangles',

        fullScreen: false,
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

        interactivity: {
            events: {
                onHover: {
                    enable: true,
                    parallax: {
                        enable: true,
                        force: 50,
                    },
                },
            },
        },
    }}
/>
