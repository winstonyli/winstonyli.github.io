<script lang="ts">
	export let lines = 30;
</script>

<div class="flex flex-col gap-3">
	<div class="skeleton h-6 w-32" />
	{#each [...Array(lines)].map(Math.random) as n, i}
		<div class="skeleton h-3" style:width="{i === 0 ? 100 : 20 + n * 80}%" />
	{/each}
</div>
