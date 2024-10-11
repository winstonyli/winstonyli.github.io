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
		date: 'Fall 2024',
		blurb:
			'Find the answer of the day! A collection of LoLdle-esque Wordle clones. Fully statically hosted on Github Pages.',
		fields: ['UI/UX', 'Web'],
		tools: ['Svelte', 'TypeScript'],
	},
	{
		title: 'Talculator',
		src: talculatorSrc,
		href: 'https://talculator.vercel.app',
		date: 'Spring 2024',
		blurb:
			'A minimal 3-dimensional graphing calculator. Supports multiple color-coded equations and symbolic computation. Warning: UI oopsies lie ahead.',
		fields: ['3D', 'UI/UX', 'Web'],
		tools: ['Three.js', 'Svelte', 'TypeScript'],
	},
	{
		title: 'Hooliganism',
		src: hooliganismSrc,
		href: 'https://hooliganism.vercel.app',
		date: 'Winter 2024',
		blurb:
			'A punk rock lyric generator. Powered by DuckDuckGo and OpenAI APIs. Built in ~3 school days for a school project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
		fields: ['AI', 'UI/UX', 'Web'],
		tools: ['Svelte', 'TypeScript'],
	},
	{
		title: 'themendingnote.org',
		src: themendingnoteSrc,
		href: 'https://www.themendingnote.org',
		date: 'Summer 2023',
		blurb:
			'An organization dedicated to providing used instruments, music lessons, and jam sessions for socioeconomically-disadvantaged groups in my local community.',
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
		title: 'Renno (legacy)',
		src: rennoSrc,
		date: 'Spring 2023',
		blurb:
			'My first language with a complete compiler pipeline, including lexing, pratt parsing, lexical scope resolution, static type checking, multi-stage lowering, a transpile-to-JS backend, and error reporting. Includes an incomplete web demo (that will probably stay incomplete for the foreseeable future ;-;).',
		fields: ['Compiler'],
		tools: ['Rust', 'Svelte', 'TypeScript'],
	},
];
