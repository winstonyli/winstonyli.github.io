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
	<div
		class="prose z-10 w-96 rounded-box rounded-l-none border-2 border-l-0 border-base-200 bg-base-100 p-8"
	>
		<h1>
			Hi! I'm Winston.
			<br />
			(they/them)
		</h1>

		I'm a freshman studying CS @ UC Irvine. I enjoy development in a variety of fields, including
		web and programming language design. If you're looking for someone who subsists off of learning
		and whose lifeblood is programming, I'm your person!

		<enhanced:img src="$lib/assets/portrait.jpg" alt="My face" />
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

<style lang="postcss">
	:global(html) {
		@apply overflow-x-hidden overflow-y-scroll transition-colors;

		&[data-theme='dark'] {
			@apply bg-neutral;
		}

		/* The first url is the Svelte logo recolored red. */
		background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='1em' height='1em' viewBox='0 0 16 16'%3E%3Cg fill='none' stroke='%23ed8796' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M12.86 6.72s1.39-1.98.08-3.87C11.286.763 9.44 1.6 9.44 1.6S6.15 3.35 4.33 4.59c-1.4 1-2.24 2.26-1.03 4.37c1.22 2.1 4.58 1.21 4.58 1.21'/%3E%3Cpath d='M3.14 9.28s-1.39 1.98-.08 3.87c1.31 1.9 3.5 1.24 3.5 1.24s3.29-1.74 5.11-2.98c1.4-1 2.24-2.26 1.03-4.37c-1.22-2.1-4.58-1.21-4.58-1.21M6.3 6.96l4.14-2.56m-4.92 7.25L9.66 9.1'/%3E%3C/g%3E%3C/svg%3E"),
			url('https://api.iconify.design/catppuccin/rust.svg'),
			url('https://api.iconify.design/catppuccin/html.svg'),
			url('https://api.iconify.design/catppuccin/javascript.svg'),
			url('https://api.iconify.design/catppuccin/python.svg'),
			url('https://api.iconify.design/catppuccin/bash.svg'),
			url('https://api.iconify.design/catppuccin/tailwind.svg'),
			url('https://api.iconify.design/catppuccin/nix.svg'),
			url('https://api.iconify.design/catppuccin/typescript.svg'),
			url('https://api.iconify.design/catppuccin/c.svg'),
			url('https://api.iconify.design/catppuccin/cpp-header.svg');
		background-position-x: 0, 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80%, 90%, 100%;
		background-size: 5vw 10vw;
		background-repeat: repeat-y;

		animation: slide 60s infinite linear;
	}

	@keyframes slide {
		to {
			background-position-y: 100%;
		}
	}
</style>
