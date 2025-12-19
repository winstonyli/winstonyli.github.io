<script lang="ts">
    import './layout.css';
    import '@fontsource/pt-serif';

    import { fly } from 'svelte/transition';
    import type { NavigationTarget } from '@sveltejs/kit';
    import { onNavigate } from '$app/navigation';
    import { navigating, page } from '$app/state';

    import routes from '$lib/routes';
    import AboutMe from '$lib/components/AboutMe.svelte';
    import DarkModeToggle from '$lib/components/DarkModeToggle.svelte';
    import MenuButton from '$lib/components/MenuButton.svelte';
    import Background from '$lib/components/Background.svelte';
    import IconMenu from '~icons/line-md/close-to-menu-transition';
    import IconClose from '~icons/line-md/menu-to-close-transition';

    let { children } = $props();

    const TRANSITION_DURATION = 300;

    const indexOf = (target: NavigationTarget | null | undefined) =>
        routes.findIndex(({ href }) => href === target?.route.id);

    // -1 if moving left, 0 if not moving, 1 if moving right
    const direction = $derived(Math.sign(indexOf(navigating.to) - indexOf(navigating.from)));

    // Variables for disabling `a` tags while transitioning
    let transitioning = $state(false);
    let slidingOut = $state(false);

    onNavigate(() => {
        transitioning = true;
        slidingOut = true;

        return new Promise((res) =>
            // Delay navigation to give time for sliding out
            setTimeout(() => {
                res();
                slidingOut = false;

                // Keep `a` tags disabled while sliding in
                setTimeout(() => {
                    transitioning = false;
                }, TRANSITION_DURATION);
            }, TRANSITION_DURATION * 2),
        );
    });

    let isMenuOpen = $state(false);
</script>

<!-- Background -->
<div class="absolute">
    <Background />
</div>

<!-- Navbar -->
<nav class="navbar fixed top-0 z-30 h-16 w-dvw border-b-2 border-base-200 bg-base-100 shadow-sm">
    <div class="ml-6 navbar-start">Winston Li</div>

    <ul class="navbar-center hidden lg:flex">
        {#key transitioning}
            {#each routes as { name, href }, i}
                <!-- Add dividers in between -->
                {#if i}
                    <div class="divider divider-horizontal"></div>
                {/if}

                <li class:pointer-events-none={transitioning}>
                    <MenuButton {href}>{name}</MenuButton>
                </li>
            {/each}
        {/key}
    </ul>

    <div class="navbar-end flex gap-2 lg:mr-4">
        <DarkModeToggle />

        <details bind:open={isMenuOpen} class="group dropdown lg:hidden">
            <summary class="btn btn-circle btn-ghost">
                {#if isMenuOpen}
                    <IconClose class="size-6" />
                {:else}
                    <IconMenu class="size-6" />
                {/if}
            </summary>

            <ul
                class="dropdown-content menu right-0 w-32 rounded-box border-2 border-base-200 bg-base-100 shadow-sm"
            >
                {#each routes as { name, href }}
                    <li class:pointer-events-none={transitioning}>
                        <MenuButton {href}>{name}</MenuButton>
                    </li>
                {/each}
            </ul>
        </details>
    </div>
</nav>

<!-- Actual page content -->
<main class="mt-5 flex w-dvw items-start justify-around gap-10 pt-16">
    <!-- About me (desktop, on all routes) -->
    <div
        class="z-10 hidden w-96 justify-between rounded-r-box border-y-2 border-r-2 border-base-200 bg-base-100 p-8 shadow-sm lg:block"
    >
        <AboutMe />
    </div>

    <!-- Directional transition -->
    <div class="mx-5 flex-1 lg:mr-10">
        {#if !slidingOut}
            <div
                in:fly={{
                    x: `${direction}00%`,
                    duration: TRANSITION_DURATION,
                }}
                out:fly={{
                    x: `${-direction}00%`,
                    duration: TRANSITION_DURATION,
                }}
                class="m-auto prose rounded-box border-2 border-base-200 bg-base-100 p-8 shadow-sm"
            >
                <!-- Actual actual page content -->
                {@render children?.()}
            </div>
        {/if}
    </div>
</main>
