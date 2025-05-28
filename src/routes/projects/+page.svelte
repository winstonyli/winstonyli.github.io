<script lang="ts">
	import FeaturedProjects from '$lib/components/FeaturedProjects.svelte';
	import Project from '$lib/components/Project.svelte';
	import { other } from '$lib/projects';
</script>

<div class="prose">
	<h1>Projects</h1>

	<div class="divider"></div>

	<p>
		I'm currently in the process of looking over my old repos to make sure I'm not leaking secrets,
		so some repos may remain private for the time being.
	</p>

	<h2>Featured projects</h2>

	<p>An array of projects I'm not (that) ashamed of.</p>

	<p></p>
</div>

<FeaturedProjects />

<div class="prose">
	<p></p>

	<h2>Other projects</h2>

	<p>
		An (uncurated) list of my... other projects. Not exactly my best work, but it's fun to record my
		progress somewhere.
	</p>

	<p></p>
</div>

<div class="grid gap-3 lg:grid-cols-2">
	{#each other as project}
		<Project {...project} />
	{/each}
</div>
