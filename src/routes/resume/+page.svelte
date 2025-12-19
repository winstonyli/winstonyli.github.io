<script lang="ts">
    // @ts-ignore
    import resume from '$lib/assets/resume.typ';
</script>

<article class="not-prose relative -m-[1cm] select-none">
    {@html resume}
    <a href="/resume.pdf" class="btn absolute -top-2 -right-2 btn-xs btn-primary">
        Click here for the PDF version.
    </a>
</article>

<style class="postcss">
    :global(svg.typst-doc) {
        width: 100%;
        height: 100%;
        :global(*[fill='#000'], *[stroke='#000']) {
            fill: var(--color-base-content);
            stroke: var(--color-base-content);
        }
    }
</style>
