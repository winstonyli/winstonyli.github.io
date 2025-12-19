<script lang="ts">
    import routes from '$lib/routes';
    import AboutMe from '$lib/components/AboutMe.svelte';
    import IconFork from '~icons/iconoir/divide-three-solid';
</script>

<div class="lg:hidden">
    <AboutMe></AboutMe>
</div>

<div class="not-prose m-8 hidden flex-col items-center gap-5 lg:flex">
    <div class="tooltip-open tooltip tooltip-right tooltip-info" data-tip="You are here">
        <div class="btn btn-disabled btn-primary">Home</div>
    </div>
    <IconFork class="size-20 rotate-180"></IconFork>
    <div class="flex gap-10">
        {#each routes as { name, href }}
            {#if href !== '/'}
                <a {href} class="btn btn-primary">{name}</a>
            {/if}
        {/each}
    </div>
</div>
