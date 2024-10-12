import type { ComponentProps } from 'svelte';
import Project from '$lib/components/Project.svelte';
import hooliganismSrc from '$lib/assets/projects/hooliganism.webp';
import rennoSrc from '$lib/assets/projects/renno.webp';
import talculatorSrc from '$lib/assets/projects/talculator.webp';
import themendingnoteSrc from '$lib/assets/projects/themendingnote.webp';
import wordleverseSrc from '$lib/assets/projects/wordleverse.webp';

export const featured: ComponentProps<Project>[] = [
	{
		title: 'Wordleverse',
		src: wordleverseSrc,
		href: 'https://winstonyli.github.io/wordleverse',
		date: "Fall '24",
		blurb:
			'Find the answer of the day! A collection of LoLdle-esque Wordle clones statically hosted on Github Pages.',
		fields: ['UI/UX', 'Web'],
		tools: ['Svelte', 'TypeScript'],
	},
	{
		title: 'Talculator',
		src: talculatorSrc,
		href: 'https://winstonyli.github.io/talculator',
		date: "Spring '24",
		blurb:
			'A simple 3-dimensional grapher with support for color-coded equations and symbolic computation.',
		fields: ['3D', 'UI/UX', 'Web'],
		tools: ['Three.js', 'Svelte', 'TypeScript'],
	},
	{
		title: 'Hooliganism',
		src: hooliganismSrc,
		href: 'https://hooliganism.vercel.app',
		date: "Winter '24",
		blurb:
			'A punk rock lyric generator powered by DuckDuckGo and OpenAI APIs. Built in ~3 school days for a history project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
		fields: ['AI', 'UI/UX', 'Web'],
		tools: ['Svelte', 'TypeScript'],
	},
	{
		title: 'themendingnote',
		src: themendingnoteSrc,
		href: 'https://www.themendingnote.org',
		date: "Summer '23",
		blurb:
			'An organization dedicated to providing free used instruments and lessons for socioeconomically-disadvantaged groups in my local community.',
		fields: ['UI/UX', 'Web'],
		tools: ['Svelte', 'TypeScript'],
	},
];

export const other: ComponentProps<Project>[] = [
	{
		title: 'Renno 2: Electric Boogaloo',
		src: '',
		date: 'WIP',
		blurb:
			'A proof-of-concept functional language that embraces incremental compilation/computation and effortless concurrency.',
		fields: ['Compiler'],
		tools: ['Rust', 'Svelte', 'TypeScript'],
	},
	{
		title: 'Roanluder',
		src: '',
		date: 'WIP',
		blurb:
			'A lightweight League of Legends companion app. Create and automatically import builds (or import them from build websites and pro games).',
		fields: ['Software', 'UI/UX'],
		tools: ['Rust', 'SQL', 'Svelte', 'TypeScript'],
	},
	{
		title: 'Renno (discontinued)',
		src: rennoSrc,
		date: "Spring '23",
		blurb:
			'My first language with a complete compiler pipeline: lexing, pratt parsing, lexical scope resolution, static type checking, multi-stage lowering, a JS backend, and error reporting. Includes an incomplete web demo.',
		fields: ['Compiler'],
		tools: ['Rust', 'Svelte', 'TypeScript'],
	},
];
