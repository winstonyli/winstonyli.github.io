<script lang="ts">
	import '../app.css';
	import '@fontsource/fira-mono';
	import '@fontsource/fira-sans';
	import { fly } from 'svelte/transition';
	import type { NavigationTarget } from '@sveltejs/kit';
	import { onNavigate } from '$app/navigation';
	import { navigating, page } from '$app/stores';
	import DarkModeToggle from '$lib/components/DarkModeToggle.svelte';
	import NavButton from '$lib/components/MenuButton.svelte';
	import Background from '$lib/components/Background.svelte';
	import IconMenu from '~icons/line-md/menu';

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

<div class="drawer drawer-end">
	<input id="drawer" type="checkbox" class="drawer-toggle" />
	<div class="drawer-content flex flex-col">
		<!-- Navbar -->
		<nav class="navbar sticky top-0 z-30 border-b-2 border-base-200 bg-base-100 shadow">
			<div class="navbar-start ml-6">Winston Li</div>

			<ul class="navbar-center hidden lg:flex">
				{#key transitioning}
					{#each routes as { name, href }, i}
						<!-- Add dividers in between -->
						{#if i}
							<div class="divider divider-horizontal" />
						{/if}

						<li class:pointer-events-none={transitioning}>
							<NavButton {href}>{name}</NavButton>
						</li>
					{/each}
				{/key}
			</ul>

			<div class="navbar-end flex gap-2 lg:mr-4">
				<DarkModeToggle />
				<label for="drawer" class="btn btn-square btn-ghost lg:hidden">
					<IconMenu />
				</label>
			</div>
		</nav>

		<!-- Page content -->
		<div class="my-10 mr-10 flex flex-col items-start justify-stretch gap-10 lg:flex-row">
			<!-- Introduction -->
			<div
				class="prose z-10 w-full rounded-box rounded-l-none border-2 border-l-0 border-base-200 bg-base-100 p-8 shadow lg:w-96"
				class:hidden={$page.route.id !== '/'}
			>
				<h1>
					Hi! I'm Winston.
					<br />
					(they/them)
				</h1>

				<p>
					I'm a CS first-year @ UCI passionate about empowering people to bring their ideas to life.
					If you're looking for someone with experience in web and software dev who's quick to learn
					and eager to take on new challenges, I'm your person!
				</p>

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
						class="flex flex-col gap-6 rounded-box border-2 border-base-200 bg-base-100 p-8 shadow"
						in:fly={{ x: `${direction}00%`, duration: 300 }}
						out:fly={{ x: `${-direction}00%`, duration: 300 }}
					>
						<slot />
					</div>
				{/if}
			</div>
		</div>
	</div>

	<div class="drawer-side z-40">
		<label for="drawer" class="drawer-overlay lg:hidden" />

		<ul class="menu min-h-full border-l-2 border-base-200 bg-base-100 p-4">
			{#each routes as { name, href }}
				<li class:pointer-events-none={transitioning}>
					<NavButton {href}>{name}</NavButton>
				</li>
			{/each}
		</ul>
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
