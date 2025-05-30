<script lang="ts">
    import wip from "$lib/assets/wip.webp";

    interface Props {
        title: string;
        src?: string;
        href?: string;
        date?: string;
        blurb: string;
        fields?: string[];
        tools?: string[];
    }

    let {
        title,
        src = wip,
        href,
        date,
        blurb,
        fields = [],
        tools = [],
    }: Props = $props();
</script>

<div
    class="card image-full border-2 border-base-200 bg-base-100 transition hover:z-10 hover:scale-110 hover:shadow-2xl hover:brightness-110 dark:bg-neutral lg:hover:scale-[1.03]"
>
    <figure>
        <img
            {src}
            alt={title}
            class="object-cover"
            class:bg-neutral={typeof src === "undefined"}
        />
    </figure>

    <div class="card-body">
        <h2 class="card-title">
            {#if typeof href !== "undefined"}
                <a {href} rel="external" class="link">{title}</a>
            {:else}
                {title}
            {/if}

            <span
                class="badge badge-accent badge-sm border-none bg-linear-to-bl from-accent lg:badge-md"
                class:to-primary={typeof date === "undefined"}
            >
                {date ?? "WIP"}
            </span>
        </h2>
        <p>{@html blurb}</p>

        <div class="card-actions">
            {#each fields as field}
                <div
                    class="badge badge-primary badge-sm text-primary-content lg:badge-md"
                >
                    {field}
                </div>
            {/each}
            {#each tools as tool}
                <div
                    class="badge badge-secondary badge-sm text-secondary-content lg:badge-md"
                >
                    {tool}
                </div>
            {/each}
        </div>
    </div>
</div>
