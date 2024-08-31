<script lang="ts">
	import { page } from '$app/stores';

	export let href: string;
</script>

<a {href} class="link-hover link" class:underline={$page.route.id === href}>
	<slot />
</a>
