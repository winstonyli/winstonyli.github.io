<script lang="ts">
	import { page } from '$app/stores';

	interface Props {
		href: string;
		children?: import('svelte').Snippet;
	}

	let { href, children }: Props = $props();
</script>

<a {href} class="link-hover link" class:underline={$page.route.id === href}>
	{@render children?.()}
</a>
