<script lang="ts">
	export let title: string;
	export let href: string | undefined = undefined;
	export let date: string;
	export let isWip = false;
	export let blurb: string;
	export let fields: string[] = [];
	export let tools: string[] = [];
</script>

<div
	class="card image-full card-compact border-2 border-base-200 bg-base-100 transition hover:scale-110 hover:shadow-2xl hover:brightness-110 dark:bg-neutral lg:hover:scale-[1.03]"
>
	<div class="card-body">
		<h1 class="card-title">
			<a {href} class="link-hover link">
				{title}
				{#if isWip}(WIP){/if} | {date}
			</a>
		</h1>
		<p>{@html blurb}</p>

		<div class="card-actions">
			{#each fields as field}
				<div class="badge badge-primary text-primary-content">{field}</div>
			{/each}
			{#each tools as tool}
				<div class="badge badge-secondary text-secondary-content">{tool}</div>
			{/each}
		</div>
	</div>

	<figure class="relative">
		{#if isWip}
			<enhanced:img
				src="$lib/assets/wip.png"
				alt="Construction tape"
				class="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 object-cover"
			/>
		{/if}
		<slot class="absolute" />
	</figure>
</div>
