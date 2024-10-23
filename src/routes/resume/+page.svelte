<script lang="ts">
	import {
		$typst as Typst,
		TypstSnippet,
	} from '@myriaddreamin/typst.ts/dist/esm/contrib/snippet.mjs';
	import compilerPath from '@myriaddreamin/typst-ts-web-compiler/pkg/typst_ts_web_compiler_bg.wasm?url';
	import rendererPath from '@myriaddreamin/typst-ts-renderer/pkg/typst_ts_renderer_bg.wasm?url';

	import resume from '$lib/assets/resume.typ?raw';

	import ResumeSkeleton from '$lib/components/ResumeSkeleton.svelte';
	import IconLink from '~icons/line-md/external-link';

	try {
		Typst.setCompilerInitOptions({ getModule: () => compilerPath });
		Typst.setRendererInitOptions({ getModule: () => rendererPath });
	} catch (e) {
		throw new Error(`compiler may have already been initialized: ${e}`);
	}

	// Lazily render/compile the resume once at most.
	let svg: Promise<string> | undefined;
	let pdf: Promise<string> | undefined;

	async function renderResume(): Promise<string> {
		return Typst.svg({ mainContent: resume });
	}

	async function compileResume(): Promise<string> {
		const pdf = await Typst.pdf({ mainContent: resume });
		if (!pdf) throw new Error('failed to compile resume to pdf');
		return URL.createObjectURL(new Blob([pdf], { type: 'application/pdf' }));
	}
</script>

<div class="prose">
	<h1>Resume</h1>

	<div class="divider" />

	<p>
		Built in <a href="https://typst.app">Typst</a>! Still in its early stages, so if you have any
		suggestions and/or advice, I would appreciate it a lot if you
		<a href="/contact">contact</a>ed me. :)
	</p>

	<p />
</div>

<div
	role="tablist"
	class="tabs tabs-lifted tab-border-2 tabs-lg drop-shadow *:[--tab-border-color:oklch(var(--b2)/var(--tw-border-opacity))]"
>
	<input type="radio" name="tabs" role="tab" class="tab" aria-label="SVG" checked />
	<div
		role="tabpanel"
		class="tab-content overflow-auto rounded-box border-2 border-base-200 bg-base-100"
	>
		{#await (svg ||= renderResume())}
			<div class="m-6 h-[842px] w-[596px]">
				<ResumeSkeleton />
			</div>
		{:then svg}
			{@html svg}
		{/await}
	</div>

	{#await (svg ||= renderResume())}
		<input type="radio" name="tabs" role="tab" class="tab" aria-label="PDF" disabled />
	{:then _}
		<input type="radio" name="tabs" role="tab" class="tab" aria-label="PDF" />
	{/await}

	<div
		role="tabpanel"
		class="tab-content overflow-auto rounded-box border-2 border-base-200 bg-base-100"
	>
		{#await (pdf ||= compileResume())}
			<div class="m-6">
				<ResumeSkeleton />
			</div>
		{:then pdf}
			<object
				title="Resume"
				class="h-[842px] w-[596px] grow rounded-box p-3"
				data={pdf}
				type="application/pdf"
			>
				Oops, looks like your browser doesn't support native embedded PDF rendering! Maybe try the
				button on the right to view the PDF directly.
			</object>
		{/await}
	</div>

	{#await (pdf ||= compileResume())}
		<div role="tab" class="tab tab-disabled"><IconLink /></div>
	{:then pdf}
		<a href={pdf} role="tab" class="tab"><IconLink /></a>
	{/await}
</div>
