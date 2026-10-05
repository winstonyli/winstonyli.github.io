<script lang="ts">
    // @ts-expect-error custom vite typ plugin doesn't include types
    import phd, { industry } from '$lib/assets/resume.typ';
    import { asset } from '$app/paths';
    import { onMount } from 'svelte';

    const variants = {
        phd: { label: 'PhD', svg: phd, pdf: '/resume.pdf' },
        industry: {
            label: 'Industry',
            svg: industry,
            pdf: '/resume-industry.pdf',
        },
    } as const;
    type Variant = keyof typeof variants;

    let variant = $state<Variant>('phd');

    // Prerendered pages can't read `url.searchParams`, so read `?v=` on mount.
    onMount(() => {
        const v = new URLSearchParams(location.search).get('v');
        if (v === 'industry') variant = v;
    });

    function select(v: Variant) {
        variant = v;
        const url = new URL(location.href);
        if (v === 'phd') url.searchParams.delete('v');
        else url.searchParams.set('v', v);
        history.replaceState(history.state, '', url);
    }
</script>

<article
    class="not-prose relative -mx-[1cm] -mt-[calc(1cm-2rem)] -mb-[1cm] select-none"
>
    <div
        role="tablist"
        class="absolute bottom-full left-0 tabs-lift tabs tabs-sm"
    >
        {#each Object.entries(variants) as [key, { label }] (key)}
            <button
                role="tab"
                class="tab"
                class:tab-active={variant === key}
                onclick={() => select(key as Variant)}
            >
                {label}
            </button>
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
