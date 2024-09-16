<script lang="ts">
	import '../app.css';
	import '@fontsource/fira-mono';
	import '@fontsource/fira-sans';
	import { fly } from 'svelte/transition';
	import type { NavigationTarget } from '@sveltejs/kit';
	import { onNavigate } from '$app/navigation';
	import { navigating } from '$app/stores';
	import DarkModeToggle from '$lib/components/DarkModeToggle.svelte';
	import NavButton from '$lib/components/MenuButton.svelte';
	import Background from '$lib/components/Background.svelte';

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
				<!-- Add dividers in between -->
				{#if i}
					<div class="divider divider-horizontal" />
				{/if}

				<div class:pointer-events-none={transitioning}>
					<NavButton {href}>{name}</NavButton>
				</div>
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

		<enhanced:img
			src="$lib/assets/portrait.jpg"
			alt="My face"
			class="aspect-square rounded object-cover"
		/>
	</div>

	<div class="flex flex-1 justify-center">
		<!-- Svelte transitions don't play nice with MPAs, and View Transition API doesn't have a way to exclude elements, so I'm doing this -->
		{#if !slidingOut}
			<div
				class="flex flex-col gap-6 rounded-box border-2 border-base-200 bg-base-100 p-8"
				in:fly={{ x: `${direction}00%`, duration: 300 }}
				out:fly={{ x: `${-direction}00%`, duration: 300 }}
			>
				<slot />
			</div>
		{/if}
	</div>
</div>

<!-- Background -->
<div class="fixed inset-0 -z-10 h-screen w-screen fill-base-100 stroke-base-200 stroke-1">
	<Background />
</div>

<style lang="postcss">
	:global(html) {
		@apply overflow-x-hidden overflow-y-scroll transition-colors;

		&[data-theme='dark'] {
			@apply bg-neutral;
		}
	}
</style>
