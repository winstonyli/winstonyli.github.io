<script lang="ts">
    import "../app.css";
    import "@fontsource/fira-mono";
    import "@fontsource/fira-sans";

    import { fly } from "svelte/transition";
    import type { NavigationTarget } from "@sveltejs/kit";

    import { onNavigate } from "$app/navigation";
    import { navigating, page } from "$app/stores";

    import AboutMe from "$lib/components/AboutMe.svelte";
    import DarkModeToggle from "$lib/components/DarkModeToggle.svelte";
    import NavButton from "$lib/components/MenuButton.svelte";
    import Background from "$lib/components/Background.svelte";
    import IconMenu from "~icons/line-md/close-to-menu-transition";
    import IconClose from "~icons/line-md/menu-to-close-transition";

    let { children } = $props();

    const TRANSITION_DURATION = 300;

    const routes = [
        { name: "Home", href: "/" },
        { name: "Resume", href: "/resume" },
        { name: "Projects", href: "/projects" },
        { name: "Contact", href: "/contact" },
    ];

    const indexOf = (target: NavigationTarget | null | undefined) =>
        routes.findIndex(({ href }) => href === target?.route.id);

    // -1 if moving left, 0 if not moving, 1 if moving right
    const direction = $derived(
        Math.sign(indexOf($navigating?.to) - indexOf($navigating?.from)),
    );

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
<nav
    class="fixed navbar h-16 border-base-200 bg-base-100 top-0 z-30 border-b-2 shadow-sm"
>
    <div class="navbar-start ml-6">Winston Li</div>

    <ul class="navbar-center hidden lg:flex">
        {#key transitioning}
            {#each routes as { name, href }, i}
                <!-- Add dividers in between -->
                {#if i}
                    <div class="divider divider-horizontal"></div>
                {/if}

                <li class:pointer-events-none={transitioning}>
                    <NavButton {href}>{name}</NavButton>
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
                class="menu dropdown-content rounded-box border-base-200 bg-base-100 right-0 border-2 shadow-sm"
            >
                {#each routes as { name, href }}
                    <li class:pointer-events-none={transitioning}>
                        <NavButton {href}>{name}</NavButton>
                    </li>
                {/each}
            </ul>
        </details>
    </div>
</nav>

<!-- Page content -->
<div class="m-5 flex flex-col gap-10 pt-16 lg:m-10 lg:ml-0 lg:flex-row">
    <!-- About me (desktop, on all routes) -->
    <div class="hidden lg:block">
        <AboutMe />
    </div>

    <div class="flex flex-1 items-start justify-center">
        <!-- Svelte transitions don't play nice with MPAs, and View Transition API doesn't have a way to exclude elements, so I'm doing this -->
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
                class="flex flex-col justify-center gap-6"
            >
                <!-- About me (mobile, only on root) -->
                <div
                    class="lg:hidden m-auto"
                    class:hidden={$page.route.id !== "/"}
                >
                    <AboutMe />
                </div>

                <div
                    class="rounded-box border-base-200 bg-base-100 border-2 p-8 shadow-sm"
                >
                    {@render children?.()}
                </div>
            </div>
        {/if}
    </div>
</div>
