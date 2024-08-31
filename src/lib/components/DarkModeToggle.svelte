<script lang="ts">
	import { onMount } from 'svelte';
	import { writable, type Writable } from 'svelte/store';
	// import IconMoon from '~icons/line-md/moon-filled-loop';
	import IconEarth from '~icons/solar/earth-bold-duotone';
	import IconSun from '~icons/solar/sun-bold-duotone';
	import IconMoon from '~icons/solar/moon-bold-duotone';

	let theme: Writable<string>;
	let isDarkMode: boolean;

	onMount(() => {
		// Initialize store.
		theme = writable(localStorage.theme || 'light');

		// Initialize `localStorage` and DOM.
		updateTheme($theme);

		// When theme changes, update `localStorage` and DOM.
		theme.subscribe(updateTheme);

		// Initialize toggle state.
		isDarkMode = $theme === 'dark';
	});

	$: $theme && ($theme = isDarkMode ? 'dark' : 'light');

	function updateTheme(theme: string) {
		localStorage.theme = theme;
		document.documentElement.setAttribute('data-theme', theme);
	}
</script>

<IconEarth />
<IconMoon />
<input type="checkbox" class="checkbox" bind:checked={isDarkMode} />

<!-- <IconEarth class="pointer-events-none fixed bottom-0 left-0 z-10 size-[50vh]" />
<div
	class="pointer-events-none fixed right-0 top-0 z-20 flex h-[200dvh] w-[200vw] flex-col justify-between transition-transform"
	class:rotate-0={!isDarkMode}
	class:rotate-180={isDarkMode}
>
	<IconSun class="size-[30vh] self-end {isDarkMode ? 'opacity-0' : 'opacity-100'}" />
	<IconMoon class="size-[30vh] -scale-100 self-start {isDarkMode ? 'opacity-100' : 'opacity-0'}" />
</div> -->
