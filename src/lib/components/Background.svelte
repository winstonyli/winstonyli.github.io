<script lang="ts">
    import { onDestroy, onMount } from 'svelte';
    import { tsParticles, type Container } from '@tsparticles/engine';
    import { loadTrianglesPreset } from '@tsparticles/preset-triangles';
    import { DARK_THEME } from '$lib/theme';

    let particles: HTMLDivElement;
    let container: Container | undefined;
    let themeObserver: MutationObserver | undefined;
    let loadToken = 0;

    function hslRangeForTheme(isDark: boolean) {
        return {
            h: { min: 0, max: 360 },
            s: { min: 50, max: 90 },
            l: isDark ? { min: 55, max: 80 } : { min: 25, max: 50 },
        };
    }

    async function loadParticles() {
        const token = ++loadToken;
        const isDark = document.documentElement.dataset.theme === DARK_THEME;
        const isMobile = window.matchMedia('(max-width: 640px)').matches;
        const reducedMotion = window.matchMedia(
            '(prefers-reduced-motion: reduce)',
        ).matches;
        const color = hslRangeForTheme(isDark);

        const options = {
            fullScreen: { zIndex: -10 },
            preset: 'triangles',
            background: { opacity: 0 },
            particles: {
                number: {
                    value: isMobile ? 80 : 200,
                    density: { enable: true },
                },
                paint: {
                    fill: { color: { value: color }, opacity: 0.1 },
                },

                effect: { type: 'shadow' },
                move: { enable: !reducedMotion, speed: 0.2 },
                links: {
                    color: { value: color },
                    opacity: 0.2,
                    triangles: { opacity: 0.01 },
                },
            },
        };

        if (container) {
            await container.reset(options);
            return;
        }

        const loaded = await tsParticles.load({ element: particles, options });
        if (token !== loadToken) {
            loaded.destroy();
            return;
        }
        container = loaded;
    }

    onMount(async () => {
        try {
            await loadTrianglesPreset(tsParticles);
        } catch (error) {
            const alreadyRegistered =
                error instanceof Error &&
                error.message.includes(
                    'Register plugins can only be done before calling tsParticles.load()',
                );
            if (!alreadyRegistered) throw error;
        }

        await loadParticles();

        themeObserver = new MutationObserver(() => loadParticles());
        themeObserver.observe(document.documentElement, {
            attributeFilter: ['data-theme'],
        });
    });

    onDestroy(() => {
        themeObserver?.disconnect();
        container?.destroy();
    });
</script>

<div bind:this={particles}></div>
