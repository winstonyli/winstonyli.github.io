<script lang="ts">
    import IconLink from '~icons/line-md/external-link';
    import wip from '$lib/assets/wip.webp';

    interface Props {
        title: string;
        status: string;
        blurb: string;
        src?: string;
        href?: string;
        fields?: string[];
        tools?: string[];
    }

    let { title, status, src = wip, href, blurb, fields = [], tools = [] }: Props = $props();
</script>

<a {href} rel="external" class="not-prose group hover-3d">
    <article class="card relative border-2 border-base-200 dark:bg-neutral">
        <figure class:hidden={!src}>
            <img {src} alt={title} class="bg-neutral" />
        </figure>

        <div class="card-body">
            <h2 class="card-title">
                {title}
                <div class="join">
                    {#each fields as field}
                        <div class="join-item badge badge-sm text-primary-content badge-primary">
                            {field}
                        </div>
                    {/each}
                </div>
                <div class="join">
                    {#each tools as tool}
                        <div
                            class="join-item badge badge-sm text-secondary-content badge-secondary"
                        >
                            {tool}
                        </div>
                    {/each}
                </div>
            </h2>
            <p>{blurb}</p>
            <em>{status}</em>
        </div>

        <div class="btn absolute right-0 m-2 btn-circle btn-sm btn-primary" class:hidden={!href}>
            <IconLink class="size-4" />
        </div>
    </article>

    <!-- 8 empty divs are needed for DaisyUI's `hover-3d` effect. -->
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
</a>
