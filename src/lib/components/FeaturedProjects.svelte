<script lang="ts">
	import { featured } from '$lib/projects';
	import Project from './Project.svelte';
</script>

<div class="grid gap-3 lg:grid-cols-2 lg:grid-rows-2">
	{#each featured as project}
		<Project {...project} />
	{/each}
</div>
