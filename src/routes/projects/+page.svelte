<script lang="ts">
	import Project from '$lib/components/Project.svelte';
	import { type ComponentProps } from 'svelte';

	let showLegacy = false;

	const projects: ComponentProps<Project>[] = [
		{
			title: 'Renno (legacy)',
			date: '2022',
			blurb:
				'My first completed language. Includes a working static typechecker, intrinsics, and web demo. Under <span class="italic">dire</span> need of rearchitecting before I can properly host it.',
			fields: ['Compiler', 'Web'],
			tools: ['Rust', 'Svelte', 'JavaScript/TypeScript'],
		},
		{
			title: 'Roanluder (legacy)',
			date: '2022',
			blurb:
				'A cross-platform helper app for League of Legends. Completely obsoleted by updates to the game. May rewrite using Rust + Tauri in the future.',
			fields: ['Software'],
			tools: ['Go'],
		},
		{
			title: 'themendingnote.org',
			href: 'https://www.themendingnote.org',
			date: 'Summer 2023',
			blurb:
				'An organization dedicated to providing used instruments, music lessons, and jam sessions for socioeconomically-disadvantaged groups in my local community.',
			fields: ['Web'],
			tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		{
			title: 'Hooliganism',
			href: 'https://hooliganism.vercel.app',
			date: 'Winter 2024',
			blurb:
				'Powered by the DuckDuckGo and OpenAI APIs. Built in ~3 days for a school project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
			fields: ['AI', 'Web'],
			tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		{
			title: 'Talculator',
			href: 'https://talculator.vercel.app',
			date: 'Spring 2024',
			blurb: 'A minimal 3-dimensional graphing calculator.',
			fields: ['3D', 'Web'],
			tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		{
			title: 'Portfolio',
			href: '/',
			date: 'Summer 2024',
			blurb: 'Self-explanatory.',
			fields: ['Web'],
			tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		{
			title: 'CosmicInsight',
			date: '2024',
			isWip: true,
			blurb:
				'An open-source type-driven library for obtaining League of Legends pro play data via scraping the Leaguepedia wiki. (Will include a web demo.)',
			fields: ['Library'],
			tools: ['TypeScript', 'SQL'],
		},
		{
			title: 'Renno',
			date: '2024',
			isWip: true,
			blurb:
				'A proof-of-concept functional language that embraces incremental compilation/computation and effortless concurrency. The culmination of 2+ years of iterative design and many months of development.',
			fields: ['Compiler', 'Web'],
			tools: ['Rust', 'Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
	];
</script>

<div class="relative">
	<label class="label absolute right-0 w-28 cursor-pointer">
		<span class="label-text">Show legacy</span>
		<input type="checkbox" class="checkbox" bind:checked={showLegacy} />
	</label>

	<div class="prose">
		<h1>Projects</h1>

		<div class="divider" />

		<p>
			An array of projects I'm not (that) ashamed of, as well as a few WIPs I love working on and
			that I'm excited to release in the near future.
		</p>

		<p>
			I'm currently in the process of looking over my old repos to make sure I'm not leaking
			secrets, so some repos may remain private for the time being.
		</p>
	</div>
</div>

<!-- Serving the static files and passing the url as an argument forgoes    -->
<!-- preprocessor optimizations, and this website is still in rapid         -->
<!-- development. Once the website is more stable, I'll manually optimize   -->
<!-- each image so I can tidy this code up.                                 -->
{#each projects as project}
	{#if !project.title.includes('legacy') || showLegacy}
		<Project {...project}>
			{#if project.title === 'themendingnote.org'}
				<enhanced:img
					src="$lib/assets/projects/themendingnote.png"
					alt="Preview of {project.title}"
				/>
			{:else if project.title === 'Hooliganism'}
				<enhanced:img src="$lib/assets/projects/hooliganism.png" alt="Preview of {project.title}" />
			{:else if project.title === 'Talculator'}
				<enhanced:img src="$lib/assets/projects/talculator.png" alt="Preview of {project.title}" />
			{:else if project.title === 'Portfolio'}
				<iframe title="Portfolio" src="/" class="h-96 w-full" />
			{:else if project.title === 'Renno'}
				<div />
			{/if}
		</Project>
	{/if}
{/each}
