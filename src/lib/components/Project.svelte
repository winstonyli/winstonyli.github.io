<script lang="ts">
	import wip from '$lib/assets/wip.webp';

	export let title: string;
	export let src: string = '';
	export let href: string = '';
	export let date: string;
	export let blurb: string;
	export let fields: string[] = [];
	export let tools: string[] = [];
</script>

<div
	class="card image-full card-compact border-2 border-base-200 bg-base-100 transition hover:z-10 hover:scale-110 hover:shadow-2xl hover:brightness-110 dark:bg-neutral lg:hover:scale-[1.03]"
>
	<div class="card-body">
		<h2 class="card-title">
			{#if href}
				<a class="link" {href}>{title}</a>
			{:else}
				{title}
			{/if}

			<span
				class="badge badge-accent badge-sm border-none bg-gradient-to-bl from-accent lg:badge-md"
				class:to-primary={date === 'WIP'}>{date}</span
			>
		</h2>
		<p>{@html blurb}</p>

		<div class="card-actions">
			{#each fields as field}
				<div class="badge badge-primary badge-sm text-primary-content lg:badge-md">{field}</div>
			{/each}
			{#each tools as tool}
				<div class="badge badge-secondary badge-sm text-secondary-content lg:badge-md">{tool}</div>
			{/each}
		</div>
	</div>

	<figure class="relative grid place-items-center *:[grid-area:1/1]">
		{#if date === 'WIP'}
			<img src={wip} alt="Construction tape" class="object-cover" />
		{/if}

		{#if src}
			<img {src} alt={title} class="object-cover" />
		{/if}
	</figure>
</div>
