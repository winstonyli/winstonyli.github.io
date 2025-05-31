<script lang="ts">
    import IconCat from "~icons/line-md/github-loop";
    import meme from "$lib/assets/meme.webp";

    const hCount = 20;
</script>

<div class="prose">
    <h1>Welcome to my website!</h1>

    <div class="divider"><IconCat class="size-24" /></div>

    I have absolutely zero idea what to put here. U{#each Array(hCount).keys() as i}
        <span style:font-size="{Math.cos((i / hCount) * Math.PI) / 2 + 0.5}rem"
            >h</span
        >
    {/each}... how about this?

    <p></p>
</div>

<div class="chat chat-start">
    <div class="chat-image avatar">
        <div class="w-20 rounded-sm">
            <img
                src={meme}
                alt={'A meme captioned "sometimes I think but then i forget" (with that exact capitalization)'}
            />
        </div>
    </div>
    <div class="ml-2 chat-bubble chat-bubble-primary">
        sometimes i think but then i forget
    </div>
</div>

<div class="prose">
    <p></p>

    <h2>Random facts</h2>

    <p>
        It has been approximately
        {Math.round(
            (Date.now() - new Date("2006-07-02").valueOf()) / 1000,
        ).toLocaleString("en-US", {
            notation: "compact",
            compactDisplay: "long",
        })}
        seconds since I came into existence.
    </p>

    <p>
        This website uses
        <a href="https://kit.svelte.dev">SvelteKit</a>,
        <a href="https://tailwindcss.com">Tailwind CSS</a>,
        <a href="https://daisyui.com">DaisyUI</a>,

        <a href="https://github.com/unplugin/unplugin-icons">
            unplugin-icons
        </a>
        (mostly
        <a href="https://github.com/cyberalien/line-md">Material Line Icons</a
        >), and
        <a href="https://particles.js.org">tsParticles</a>.
    </p>
</div>
