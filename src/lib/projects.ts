import type { ComponentProps } from 'svelte';
import Project from '$lib/components/Project.svelte';
import hooliganismSrc from '$lib/assets/projects/hooliganism.webp';
import rennoSrc from '$lib/assets/projects/renno.webp';
import talculatorSrc from '$lib/assets/projects/talculator.webp';
import themendingnoteSrc from '$lib/assets/projects/themendingnote.webp';
import wordleverseSrc from '$lib/assets/projects/wordleverse.webp';

export const featured: ComponentProps<Project>[] = [
	{
		title: 'Roanluder',
		date: 'WIP',
		blurb:
			'A full-stack League of Legends companion app. Create builds (or yoink from external sources) and automatically import them.',
		fields: ['CI/CD', 'Database', 'Full-Stack', 'Software', 'UI/UX', 'Web'],
		tools: ['Firebase', 'Python', 'Rust', 'Svelte', 'TypeScript'],
	},
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
];

export const other: ComponentProps<Project>[] = [
	{
		title: 'Renno 2: Electric Boogaloo',
		date: 'WIP',
		blurb:
			'A proof-of-concept functional language that embraces incremental computation and effortless concurrency.',
		fields: ['Compiler', 'UI/UX', 'Web'],
		tools: ['Rust', 'Svelte', 'TypeScript'],
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
	{
		title: 'Renno',
		src: rennoSrc,
		date: "Spring '23",
		blurb:
			'My first language with a complete compiler pipeline: lexing, parsing, name resolution, static type checking, multi-stage lowering, a JS backend, error reporting, and an incomplete web demo.',
		fields: ['Compiler'],
		tools: ['Rust', 'Svelte', 'TypeScript'],
	},
];
