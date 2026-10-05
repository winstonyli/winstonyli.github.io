<script lang="ts">
    // @ts-expect-error custom vite typ plugin doesn't include types
    import phd, { industry } from '$lib/assets/resume.typ';
    import { asset, resolve } from '$app/paths';

    interface Props {
        variant: 'phd' | 'industry';
    }

    let { variant }: Props = $props();

    const variants = {
        phd: { label: 'Research', svg: phd, pdf: '/resume.pdf', href: '/resume' },
        industry: {
            label: 'Industry',
            svg: industry,
            pdf: '/resume-industry.pdf',
            href: '/resume/industry',
        },
    } as const;
</script>

<article class="not-prose relative -m-[1cm] select-none">
    <div
        role="tablist"
        class="absolute bottom-full left-6 translate-y-1.5 tabs-lift tabs [--border:2px] tabs-md"
    >
        {#each Object.entries(variants) as [key, { label, href }] (key)}
            <a
                role="tab"
                href={resolve(href)}
                data-sveltekit-noscroll
                class="tab [--tab-border-color:var(--color-base-200)]!"
                class:tab-active={variant === key}
                aria-selected={variant === key}
            >
                {label}
            </a>
        {/each}
    </div>
    <!-- eslint-disable-next-line svelte/no-at-html-tags -->
    {@html variants[variant].svg}
    <a
        href={asset(variants[variant].pdf)}
        class="btn absolute -top-2 -right-2 btn-xs btn-primary"
    >
        Click here for PDF
    </a>
</article>

<style>
    :global(svg.typst-doc) {
        width: 100%;
        height: 100%;
        :global(*[fill='#000'], *[stroke='#000']) {
            fill: var(--color-base-content);
            stroke: var(--color-base-content);
        }
    }
</style>
