<script lang="ts">
    import { onMount } from 'svelte';
    import IconSun from '~icons/line-md/moon-filled-to-sunny-filled-loop-transition';
    import IconMoon from '~icons/line-md/sunny-filled-loop-to-moon-filled-loop-transition';

    // Initialize checkbox state.
    let isDarkMode = $state(false);
    onMount(() => {
        isDarkMode = localStorage.theme === 'dark';
    });

    // When theme changes, update `localStorage` and DOM.
    $effect(() => {
        localStorage.theme = isDarkMode ? 'dark' : 'light';
        document.documentElement.setAttribute('data-theme', isDarkMode ? 'business' : 'corporate');
    });
</script>

<label class="inline-grid cursor-pointer place-content-center">
    <!-- Hidden checkbox controls state -->
    <input type="checkbox" class="hidden" bind:checked={isDarkMode} aria-label="Toggle dark mode" />

    {#if isDarkMode}
        <IconMoon class="size-6" />
    {:else}
        <IconSun class="size-6" />
    {/if}
</label>
