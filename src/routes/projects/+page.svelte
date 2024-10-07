<script lang="ts">
	import FeaturedProjects from '$lib/components/FeaturedProjects.svelte';
	import Project from '$lib/components/Project.svelte';
	import { other } from '$lib/projects';
</script>

<div class="prose">
	<h1>Projects</h1>

	<div class="divider" />

	<p>An array of projects I'm not (that) ashamed of.</p>

	<p>
		I'm currently in the process of looking over my old repos to make sure I'm not leaking secrets,
		so some repos may remain private for the time being.
	</p>

	<h2>Featured projects</h2>
</div>

<FeaturedProjects />

<div class="prose mt-6">
	<h2>Other projects</h2>
</div>

<div class="flex flex-col">
	{#each other as project}
		<Project {...project} />
	{/each}
</div>
