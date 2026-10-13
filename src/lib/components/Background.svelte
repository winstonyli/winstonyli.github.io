<script lang="ts">
    import { onDestroy, onMount } from 'svelte';
    import {
        hslToRgb,
        rgbToHsl,
        tsParticles,
        type Container,
        type IRgb,
    } from '@tsparticles/engine';
    import { loadTrianglesPreset } from '@tsparticles/preset-triangles';
    import { DARK_THEME } from '$lib/theme';

    let particles: HTMLDivElement;
    let container: Container | undefined;
    let themeObserver: MutationObserver | undefined;
    let loadToken = 0;
    let lightness = { min: 0, max: 0 };

    function hslRangeForTheme(isDark: boolean) {
        return {
            h: { min: 0, max: 360 },
            s: { min: 50, max: 90 },
            l: isDark ? { min: 55, max: 80 } : { min: 25, max: 50 },
        };
    }

    // Theme changes only move lightness, so remap live particles into the new
    // range instead of resetting (which respawns the whole field).
    function recolor(isDark: boolean) {
        const from = lightness;
        const to = hslRangeForTheme(isDark).l;
        const remap = (l: number) =>
            to.min +
            ((l - from.min) / (from.max - from.min)) * (to.max - to.min);
        for (const p of container!.particles.filter(() => true)) {
            if (p.fillColor) p.fillColor.l.value = remap(p.fillColor.l.value);
        }
        // All links share one color, cached as RGB when first drawn.
        // (added by the links plugin, so not in the engine's types)
        const manager = container!.particles as unknown as {
            linksColor?: IRgb | string;
        };
        if (typeof manager.linksColor === 'object') {
            const hsl = rgbToHsl(manager.linksColor);
            manager.linksColor = hslToRgb({ ...hsl, l: remap(hsl.l) });
        }
        lightness = to;
    }

    async function loadParticles() {
        const token = ++loadToken;
        const isDark = document.documentElement.dataset.theme === DARK_THEME;
        if (container) {
            recolor(isDark);
            return;
        }
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
                    fill: { color: { value: color }, opacity: 0.16 },
                },

                effect: { type: 'shadow' },
                move: { enable: !reducedMotion, speed: 0.2 },
                links: {
                    color: { value: color },
                    opacity: 0.35,
                    triangles: { opacity: 0.03 },
                },
            },
        };

        const loaded = await tsParticles.load({ element: particles, options });
        if (token !== loadToken) {
            loaded?.destroy();
            return;
        }
        container = loaded;
        lightness = color.l;
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
