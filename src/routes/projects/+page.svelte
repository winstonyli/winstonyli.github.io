<script lang="ts">
	import Project from '$lib/components/Project.svelte';
	import { onMount, type ComponentProps } from 'svelte';

	let showWIP = false;

	const projects: ComponentProps<Project>[] = [
		// {
		// 	title: 'Yat',
		// 	date: '2022',
		// 	isWip: true,
		// 	blurb:
		// 		'<b>Y</b>et <b>A</b>nother <b>T</b>oy language. The first language I made a web demo for. Completed, but web demo under dire need of rearchitecting.',
		// 	fields: ['Compiler', 'Web'],
		// 	tools: ['JavaScript', 'Rust', 'Svelte', 'TypeScript', 'Vercel'],
		// },
		{
			title: 'themendingnote.org',
			href: 'https://www.themendingnote.org',
			date: 'Summer 2023',
			blurb:
				'An organization dedicated to providing used instruments, music lessons, and jam sessions for socioeconomically-disadvantaged groups in my local community.',
			fields: ['Web'],
			tools: ['JavaScript', 'Svelte', 'TypeScript', 'Vercel'],
		},
		{
			title: 'Hooliganism',
			href: 'https://hooliganism.vercel.app',
			date: 'Winter 2024',
			blurb:
				'Powered by the DuckDuckGo and OpenAI APIs. Built in ~3 days for a school project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
			fields: ['AI', 'Web'],
			tools: ['JavaScript', 'Svelte', 'TypeScript', 'Vercel'],
		},
		{
			title: 'Talculator',
			href: 'https://talculator.vercel.app',
			date: 'Spring 2024',
			blurb: 'A minimal 3-dimensional graphing calculator.',
			fields: ['3D', 'Web'],
			tools: ['JavaScript', 'Svelte', 'TypeScript', 'Vercel'],
		},
		{
			title: 'Portfolio',
			href: '/',
			date: 'Summer 2024',
			blurb: 'Self-explanatory.',
			fields: ['Web'],
			tools: ['JavaScript', 'Svelte', 'TypeScript', 'Vercel'],
		},
		{
			title: 'Renno',
			date: '2024',
			isWip: true,
			blurb:
				'A proof-of-concept functional language that embraces incremental compilation/computation and effortless concurrency. The culmination of 2 years of iterative design and many months of development.',
			fields: ['Compiler', 'Web'],
			tools: ['JavaScript', 'Rust', 'Svelte', 'TypeScript', 'Vercel'],
		},
	];

	// let iframe: HTMLIFrameElement;

	onMount(() => {
		// let observer = new IntersectionObserver(
		// 	() => {
		// 		console.log('asdasdasd');
		// 	},
		// 	{
		// 		threshold: 1.0,
		// 	},
		// );
		// observer.observe(iframe);
		// iframe.contentWindow?.addEventListener('unload', () => {
		// 	console.log(iframe.contentWindow?.location.href);
		// });
	});
</script>

<div class="relative">
	<label class="label absolute right-0 w-28 cursor-pointer">
		<span class="label-text">Show WIP?</span>
		<input type="checkbox" class="checkbox" bind:checked={showWIP} />
	</label>

	<div class="prose">
		<h1>Projects</h1>
		<p>An array of projects I'm not (that) ashamed of.</p>
	</div>
</div>

<!-- TODO: easter egg with portfolio recursion -->
{#each projects as project}
	{#if project.date !== 'WIP' || showWIP}
		<Project {...project}>
			{#if project.title === 'Yat'}
				<enhanced:img src="$lib/assets/projects/hooliganism.png" alt="Preview of {project.title}" />
			{:else if project.title === 'themendingnote.org'}
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
