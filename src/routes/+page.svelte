<script lang="ts">
    import FeaturedProjects from "$lib/components/FeaturedProjects.svelte";
    import IconCat from "~icons/line-md/github-loop";
</script>

<div class="prose mb-4">
    <h1>Welcome to my website!</h1>

    <div class="divider"></div>

    <IconCat class="inline size-40 w-full" />

    <p>
        (Here's a GitHub cat quasi-maneki-neko.) Feel free to check out my
        <a href="/resume">resume</a>, <a href="/projects">projects</a>,
        <a href="/contact">contact</a> me, or browse through my website on your own!
    </p>

    <h2>Featured projects</h2>
</div>

<FeaturedProjects />

<div class="prose mt-6">
    <h2>Libraries and tools used</h2>

    <ul>
        <li><a href="https://kit.svelte.dev">SvelteKit</a></li>
        <li><a href="https://tailwindcss.com">Tailwind CSS</a></li>
        <li><a href="https://daisyui.com">DaisyUI</a></li>
        <li>
            <a href="https://github.com/unplugin/unplugin-icons">
                unplugin-icons
            </a>
        </li>
    </ul>
</div>
