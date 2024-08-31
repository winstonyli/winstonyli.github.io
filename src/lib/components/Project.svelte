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
	class="card card-compact border-2 border-base-200 bg-base-100 transition hover:scale-[1.03] hover:shadow-2xl hover:brightness-110 dark:bg-neutral"
>
	<div class="card-body">
		<h1 class="card-title">
			<a {href} class="link-hover link">
				{title}
				{#if isWip}(WIP){/if}
			</a>

			<div class="divider divider-horizontal" />
			{date}
		</h1>
		<p>{@html blurb}</p>

		<div class="card-actions">
			{#each fields as field}
				<div class="badge badge-primary">{field}</div>
			{/each}
			{#each tools as tool}
				<div class="badge badge-secondary">{tool}</div>
			{/each}
		</div>
	</div>

	<figure>
		<a {href} class="relative">
			{#if isWip}
				<enhanced:img
					src="$lib/assets/wip.png"
					alt="Construction tape"
					class="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
				/>
			{/if}
			<slot class="absolute" />
		</a>
	</figure>
</div>
