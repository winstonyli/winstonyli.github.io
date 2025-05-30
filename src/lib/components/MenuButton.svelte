<script lang="ts">
    import { navigating, page } from "$app/state";

    interface Props {
        href: string;
        children?: import("svelte").Snippet;
    }

    let { href, children }: Props = $props();

    let isCurrentPage = $derived(page.route.id === href);
    let isNavigatingToPage = $derived(navigating.to?.route.id === href);
</script>

<a
    {href}
    class="link-hover link"
    class:pointer-events-none={isCurrentPage}
    class:underline={isCurrentPage || isNavigatingToPage}
>
    {@render children?.()}
</a>
