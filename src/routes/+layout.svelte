<script lang="ts">
	import '../app.css';
	import '@fontsource/fira-mono';
	import '@fontsource/fira-sans';
	import { fly } from 'svelte/transition';
	import type { NavigationTarget } from '@sveltejs/kit';
	import { onNavigate } from '$app/navigation';
	import { navigating } from '$app/stores';
	import DarkModeToggle from '$lib/components/DarkModeToggle.svelte';
	import MenuButton from '$lib/components/MenuButton.svelte';
	import Network from '$lib/components/Network.svelte';

	let width: number;
	let height: number;

	let routes = [
		{ name: 'Home', href: '/' },
		{ name: 'Resume', href: '/resume' },
		{ name: 'Projects', href: '/projects' },
		{ name: 'Contact', href: '/contact' },
	];

	const indexOf = (target: NavigationTarget | null | undefined) =>
		routes.findIndex(({ href }) => href === target?.route.id);

	// -1 if moving left, 0 if not moving, 1 if moving right
	$: direction = Math.sign(indexOf($navigating?.to) - indexOf($navigating?.from));

	// Disable `a` tags while transitioning
	// Variables for disabling `a` tags while transitioning
	let transitioning = false;
	let slidingOut = false;

	onNavigate(() => {
		transitioning = true;
		slidingOut = true;

		return new Promise((res) =>
			// Delay navigation by 300ms to give time for sliding out
			setTimeout(() => {
				res();
				slidingOut = false;

				// Keep `a` tags disabled while sliding in
				setTimeout(() => {
					transitioning = false;
				}, 300);
			}, 300),
		);
	});

	import IconNpm from '~icons/catppuccin/npm';
	import IconSvelte from '~icons/catppuccin/svelte';
	import IconJs from '~icons/catppuccin/javascript';
	import IconTs from '~icons/catppuccin/typescript';
	import IconRust from '~icons/catppuccin/rust';
	import IconC from '~icons/catppuccin/c';
	import IconCpp from '~icons/catppuccin/cpp-header';
	import IconPython from '~icons/catppuccin/python';
	import IconBash from '~icons/catppuccin/bash';
	import IconNix from '~icons/catppuccin/nix';
	import IconHtml from '~icons/catppuccin/html';
	import IconCss from '~icons/catppuccin/css';
	import IconTailwind from '~icons/catppuccin/tailwind';
</script>

<svelte:window bind:innerWidth={width} bind:innerHeight={height} />

<!-- Navbar -->
<nav class="navbar sticky top-0 z-20 border-b-2 border-base-200 bg-base-100 pl-6 pr-5">
	<div class="navbar-start">Winston Li</div>

	<div class="navbar-center">
		{#key transitioning}
			{#each routes as { name, href }, i}
				<div class:pointer-events-none={transitioning}>
					<MenuButton {href}>{name}</MenuButton>
				</div>
				<!-- Add dividers in between -->
				{#if i < routes.length - 1}
					<div class="divider divider-horizontal" />
				{/if}
			{/each}
		{/key}
	</div>

	<div class="navbar-end flex gap-2">
		<DarkModeToggle />
	</div>
</nav>

<div class="my-10 mr-10 flex items-start justify-stretch gap-10">
	<!-- Introduction -->
	<div class="prose z-10">
		<h1 class="ml-8">
			Hi! I'm Winston.
			<br />
			(they/them)
		</h1>

		<div
			class="z-10 w-96 rounded-box rounded-l-none border-2 border-l-0 border-base-200 bg-base-100 p-8"
		>
			I'm a freshman studying CS @ UC Irvine. I enjoy development in a variety of fields, including
			web and programming language design. If you're looking for someone who subsists off of
			learning and whose lifeblood is programming, I'm your person!

			<enhanced:img src="$lib/assets/portrait.jpg" alt="My face" />
		</div>
	</div>

	<!-- Svelte transitions don't play nice with MPAs, and View Transition API doesn't have a way to exclude elements, so I'm doing this -->
	{#if !slidingOut}
		<div
			class="flex flex-1 flex-col gap-6 rounded-box border-2 border-base-200 bg-base-100 p-8"
			in:fly={{ x: `${direction}00%`, duration: 300 }}
			out:fly={{ x: `${-direction}00%`, duration: 300 }}
		>
			<slot />
		</div>
	{/if}
</div>

<div class="fixed inset-0 z-10 grid place-items-center">
	<!-- Background candidate 1: network -->
	<!-- <Network /> -->
	<!-- Background candidate 2: toolchains -->
	<div class="sliding grid scale-[2] grid-cols-[repeat(38,1fr)] gap-2">
		{#each Array(100) as _}
			<IconNpm />
			<IconRust />
			<IconSvelte />
			<IconHtml />
			<IconJs />
			<IconBash />
			<IconPython />
			<IconTailwind />
			<IconNix />
			<IconTs />
			<IconCss />
			<IconC />
			<IconCpp />
		{/each}
	</div>
</div>

<style lang="postcss">
	:global(html) {
		@apply overflow-x-hidden overflow-y-scroll transition-colors;

		&[data-theme='light'] {
			/* @apply bg-base-100; */
		}

		&[data-theme='dark'] {
			@apply bg-neutral;
		}

		/* Background candidate 3: grid */
		/* background-size: 40px 40px; */
		/* background-position: 23px 23px; */
		/* background-image: linear-gradient(to right, oklch(var(--bc) / 0.1) 2px, transparent 1px),
			linear-gradient(to bottom, oklch(var(--bc) / 0.1) 2px, transparent 1px); */
		/* background-image: radial-gradient(circle, oklch(var(--bc)) 2px, transparent 1px); */
	}

	@keyframes slide {
		from {
			transform: translate(0 0);
		}
		to {
			transform: translate(100px 100px);
		}
	}

	.sliding {
		animation: slide 1s infinite;
	}
</style>
