<script lang="ts">
    import { navigating, page } from '$app/state';
    import { resolve } from '$app/paths';

    interface Props {
        href: import('$app/types').RouteId;
        children?: import('svelte').Snippet;
    }

    let { href, children }: Props = $props();

    let isCurrentPage = $derived(page.route.id === href);
    let isNavigatingToPage = $derived(navigating.to?.route.id === href);
</script>

<a
    href={resolve(href)}
    class="link link-hover"
    class:pointer-events-none={isCurrentPage}
    class:underline={isCurrentPage || isNavigatingToPage}
>
    {@render children?.()}
</a>
