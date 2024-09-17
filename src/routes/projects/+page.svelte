<script lang="ts">
	import Project from '$lib/components/Project.svelte';
	import { type ComponentProps } from 'svelte';

	const projects: (ComponentProps<Project> & { hiddenByDefault?: boolean })[] = [
		// {
		// 	title: 'Roanluder',
		// 	date: 'Fall 2022',
		// 	hiddenByDefault: true,
		// 	blurb:
		// 		'A cross-platform helper app for League of Legends. Completely obsoleted by updates to the game. May rewrite using Rust + Tauri in the future.',
		// 	fields: ['Software'],
		// 	tools: ['Go'],
		// },
		{
			title: 'Renno',
			date: 'Spring 2023',
			blurb:
				'My first language with a complete compiler pipeline, including lexing, pratt parsing, lexical scope resolution, static type checking, multi-stage lowering, a transpile-to-JS backend, and error reporting.',
			fields: ['Compiler', 'Web'],
			tools: ['Rust', 'Svelte', 'JavaScript/TypeScript'],
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
				'A punk rock lyric generator. Powered by DuckDuckGo and OpenAI APIs. Built in ~3 school days for a school project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
			fields: ['AI', 'Web'],
			tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		{
			title: 'Talculator',
			href: 'https://talculator.vercel.app',
			date: 'Spring 2024',
			blurb:
				'A minimal 3-dimensional graphing calculator. Supports multiple color-coded equations and symbolic computation. Warning: UI oopsies lie ahead.',
			fields: ['3D', 'Web'],
			tools: ['Three.js', 'Svelte', 'JavaScript/TypeScript', 'Vercel'],
		},
		// {
		// 	title: 'Portfolio',
		// 	href: '/',
		// 	date: 'Summer 2024',
		// 	blurb: 'Self-explanatory.',
		// 	fields: ['Web'],
		// 	tools: ['Svelte', 'JavaScript/TypeScript', 'Vercel'],
		// },
		{
			title: 'CosmicInsight',
			date: '2024',
			isWip: true,
			blurb:
				'A type-driven library for obtaining League of Legends pro play data via scraping the Leaguepedia wiki. Will include a web demo.',
			fields: ['Library'],
			tools: ['TypeScript', 'SQL'],
		},
		// {
		// 	title: 'Renno',
		// 	date: '2024',
		// 	isWip: true,
		// 	blurb:
		// 		'A proof-of-concept functional language that embraces incremental compilation/computation and effortless concurrency. The culmination of 2+ years of iterative design and many months of development.',
		// 	fields: ['Compiler', 'Web'],
		// 	tools: ['Rust', 'Svelte', 'JavaScript/TypeScript', 'Vercel'],
		// },
	];
</script>

<div class="relative">
	<div class="prose">
		<h1>Projects</h1>

		<div class="divider" />

		<p>An array of projects I'm not (that) ashamed of.</p>

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
			<!-- {:else if project.title === 'Portfolio'}
				<iframe title="Portfolio" src="/" class="h-96 w-full" /> -->
		{/if}
	</Project>
{/each}
