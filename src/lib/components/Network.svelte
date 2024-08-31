<script lang="ts">
	import { onMount } from 'svelte';

	export let radius = 8;
	export let count = 12;

	let width: number;
	let height: number;

	interface Particle {
		x: number;
		y: number;
		theta: number;
		isNew: boolean;
		isOld: boolean;
	}

	let particles: Particle[] = [];

	// Loop handle.
	let frame: number;

	// Random float in [min, max).
	const random = (min: number, max: number) => min + Math.random() * (max - min);

	// Constructor.
	const newParticle = (isNew = true): Particle => ({
		x: random((radius - width) / 2, (width - radius) / 2),
		y: random((radius - height) / 2, (height - radius) / 2),
		theta: random(0, 2 * Math.PI),
		isNew,
		isOld: false,
	});

	onMount(() => {
		// Instantiate particle array.
		particles = Array.from(Array(count), () => newParticle(false));

		// Start loop.
		frame = window.requestAnimationFrame(update);

		// On destruction, clean up loop.
		return () => cancelAnimationFrame(frame);
	});

	// Don't use delta; it messes up the whole thing if the tab is unfocused.
	function update() {
		// Get center of mass of particles.
		let [cx, cy] = particles
			.reduce(([x, y], p) => [x + p.x, y + p.y], [0, 0])
			.map((n) => n / count);

		// Use `forEach` for convenient access to index.
		for (const particle of particles) {
			const dx = Math.cos(particle.theta);
			const dy = Math.sin(particle.theta);

			// Update position & slowly recenter particles.
			particle.x += (dx * 30 - cx * 2) / 100;
			particle.y += (dy * 30 - cy * 2) / 100;

			particle.theta += 0.01;
		}

		// Rerender particles.
		particles = particles;

		frame = window.requestAnimationFrame(update);
	}
</script>

<svelte:window bind:innerWidth={width} bind:innerHeight={height} />

<svg {width} {height} class="fill-base-100 opacity-10">
	{#each particles as p1, i}
		<!-- Circles -->
		<circle cx={p1.x + width / 2} cy={p1.y + height / 2} r={radius} class="fill-base-content" />

		<!-- Lines -->
		{#each particles as p2, j}
			{#if i !== j}
				<line
					x1={p1.x + width / 2}
					y1={p1.y + height / 2}
					x2={p2.x + width / 2}
					y2={p2.y + height / 2}
					class="stroke-base-content stroke-2"
				/>
			{/if}
		{/each}
	{/each}
</svg>
