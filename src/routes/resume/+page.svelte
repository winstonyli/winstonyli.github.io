<script lang="ts">
    // @ts-expect-error custom vite typ plugin doesn't include types
    import resume from '$lib/assets/resume.typ';
    import { asset } from '$app/paths';
</script>

<article class="not-prose relative -m-[1cm] select-none">
    <!-- eslint-disable-next-line svelte/no-at-html-tags -->
    {@html resume}
    <a
        href={asset('/resume.pdf')}
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
