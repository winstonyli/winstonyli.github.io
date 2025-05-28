<script lang="ts">
	import IconLink from '~icons/line-md/external-link';
</script>

<div class="prose">
	<h1>Resume</h1>

	<div class="divider"></div>

	<p>
		Built in <a href="https://typst.app">Typst</a> and compiled to SVG & PDF using GitHub Actions!
		Still in its early stages, so if you have any suggestions and/or advice, I would appreciate it a
		lot if you <a href="/contact">contact</a>ed me. :)
	</p>

	<p></p>
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
		<img src="/resume.svg" alt="Resume SVG" />
	</div>

	<input type="radio" name="tabs" role="tab" class="tab" aria-label="PDF" />

	<div
		role="tabpanel"
		class="tab-content overflow-auto rounded-box border-2 border-base-200 bg-base-100"
	>
		<object
			title="Resume"
			class="aspect-[5/7] w-full rounded-box p-3"
			data="/resume.pdf"
			type="application/pdf"
		>
			Oops, looks like your browser doesn't support native embedded PDF rendering! Maybe try the
			button on the right to view the PDF directly.
		</object>
	</div>

	<a href="/resume.pdf" role="tab" class="tab"><IconLink /></a>
</div>
