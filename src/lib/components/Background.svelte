<!-- Placeholder background -->
<script lang="ts">
	import { onMount } from 'svelte';

	interface Props {
		radius?: number;
		count?: number;
	}

	let { radius = 8, count = 12 }: Props = $props();

	let width: number = $state();
	let height: number = $state();

	interface Particle {
		x: number;
		y: number;
		theta: number;
	}

	let particles: Particle[] = $state([]);

	// Loop handle.
	let frame: number;

	// Random float in [min, max).
	const random = (min: number, max: number) => min + Math.random() * (max - min);

	// Constructor.
	const newParticle = (isNew = true): Particle => ({
		x: random((radius - width) / 2, (width - radius) / 2),
		y: random((radius - height) / 2, (height - radius) / 2),
		theta: random(0, 2 * Math.PI),
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

<!-- <script lang="ts">
	import { onMount } from 'svelte';

	const waveLength = 100;
	const k = 0.02;
	const damping = 0.02;
	const spread = 0.02;

	interface Spring {
		p: number;
		v: number;
	}

	let springs = [] as Spring[];

	for (const i of Array(waveLength).keys()) {
		springs[i] = {
			p: 0,
			v: 0,
		};
	}

	export let dropRadius = 1;
	export let gravity = 0.12;

	const SVG_WIDTH = 100;

	let dropY = 0;
	let dropDy = 0;

	let frame: number;

	let counter = 0;

	onMount(() => {
		frame = requestAnimationFrame(update);
		return () => cancelAnimationFrame(frame);
	});

	function update() {
		dropY += dropDy;
		dropDy += gravity;
		counter += 1;

		if (dropY > 100 + dropRadius / 2) {
			dropY = 0;
			dropDy = 0;
			springs[10].p = -40;
		}

		frame = requestAnimationFrame(update);

		for (const s of springs) {
			const a = -k * s.p - damping * s.v;
			s.p += s.v;
			s.v += a;
		}

		const leftDeltas = [];
		const rightDeltas = [];

		for (let t = 0; t < 8; t++) {
			for (let i = 0; i < springs.length; i++) {
				const prev = springs[(i - 1 + springs.length) % springs.length];
				const next = springs[(i + 1) % springs.length];

				leftDeltas[i] = spread * (springs[i].p - prev.p);
				rightDeltas[i] = spread * (springs[i].p - next.p);
			}

			for (let i = 0; i < springs.length; i++) {
				const prev = springs[(i - 1 + springs.length) % springs.length];
				const next = springs[(i + 1) % springs.length];
				prev.v += leftDeltas[i];
				next.v += rightDeltas[i];
				prev.p += leftDeltas[i];
				next.p += rightDeltas[i];
			}
		}

		springs = springs;
	}
</script>

<svg width="100%" height="100%" viewBox="0 0 100 180">
	<circle cx={0} cy={dropY} r={dropRadius}></circle>
</svg>

<svg width="100%" height={100} viewBox="0 0 100 180">
	<polygon
		points="0,100 0,0 {springs
			.map((x, i) => [(i * SVG_WIDTH) / waveLength, x.p])
			.map((x) => x.join(','))
			.join(' ')} {SVG_WIDTH},0 {SVG_WIDTH},100"
		transform="translate(0,90)"
	/></svg
> -->
