import type { ComponentProps } from 'svelte';
import Project from '$lib/components/Project.svelte';
import hooliganismSrc from '$lib/assets/projects/hooliganism.webp';
import rennoSrc from '$lib/assets/projects/renno.webp';
import talculatorSrc from '$lib/assets/projects/talculator.webp';
import themendingnoteSrc from '$lib/assets/projects/themendingnote.webp';
import wordleverseSrc from '$lib/assets/projects/wordleverse.webp';

// const cosmicInsight: ComponentProps<Project> = {
// 	title: 'CosmicInsight',
//  src: '$lib/
// 	date: '2024',
// 	isWip: true,
// 	blurb:
// 		'A type-driven library for obtaining League of Legends pro play data via scraping the Leaguepedia wiki. Will include a web demo.',
// 	fields: ['Library'],
// 	tools: ['TypeScript', 'SQL'],
// };

// const renno: ComponentProps<Project> = {
// 	title: 'Renno',
//  src: '$lib/
// 	date: '2024',
// 	isWip: true,
// 	blurb:
// 		'A proof-of-concept functional language that embraces incremental compilation/computation and effortless concurrency. The culmination of 2+ years of iterative design and many months of development.',
// 	fields: ['Compiler', 'Web'],
// 	tools: ['Rust', 'Svelte', 'TypeScript', 'Vercel'],
// };

const wordleverse: ComponentProps<Project> = {
	title: 'Wordleverse',
	src: wordleverseSrc,
	href: 'https://winstonyli.github.io/wordleverse',
	date: 'Fall 2024',
	blurb:
		'Find the animatronic, monkey, etc. of the day. A collection of LoLdle-esque Wordle clones. Fully statically hosted on Github Pages.',
	fields: ['Web'],
	tools: ['Svelte', 'TypeScript'],
};

const talculator: ComponentProps<Project> = {
	title: 'Talculator',
	src: talculatorSrc,
	href: 'https://talculator.vercel.app',
	date: 'Spring 2024',
	blurb:
		'A minimal 3-dimensional graphing calculator. Supports multiple color-coded equations and symbolic computation. Warning: UI oopsies lie ahead.',
	fields: ['3D', 'Web'],
	tools: ['Three.js', 'Svelte', 'TypeScript', 'Vercel'],
};

const hooliganism: ComponentProps<Project> = {
	title: 'Hooliganism',
	src: hooliganismSrc,
	href: 'https://hooliganism.vercel.app',
	date: 'Winter 2024',
	blurb:
		'A punk rock lyric generator. Powered by DuckDuckGo and OpenAI APIs. Built in ~3 school days for a school project, very loosely interpreting the directions "create lyrics for... and artistically represent... a punk song."',
	fields: ['AI', 'Web'],
	tools: ['Svelte', 'TypeScript', 'Vercel'],
};

const themendingnote: ComponentProps<Project> = {
	title: 'themendingnote.org',
	src: themendingnoteSrc,
	href: 'https://www.themendingnote.org',
	date: 'Summer 2023',
	blurb:
		'An organization dedicated to providing used instruments, music lessons, and jam sessions for socioeconomically-disadvantaged groups in my local community.',
	fields: ['Web'],
	tools: ['Svelte', 'TypeScript', 'Vercel'],
};

const renno: ComponentProps<Project> = {
	title: 'Renno',
	src: rennoSrc,
	date: 'Spring 2023',
	blurb:
		'My first language with a complete compiler pipeline, including lexing, pratt parsing, lexical scope resolution, static type checking, multi-stage lowering, a transpile-to-JS backend, and error reporting.',
	fields: ['Compiler', 'Web'],
	tools: ['Rust', 'Svelte', 'TypeScript'],
};

export const featured = [wordleverse, talculator, hooliganism, themendingnote];
export const other = [renno];
