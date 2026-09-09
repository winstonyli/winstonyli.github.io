import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
export default {
    preprocess: vitePreprocess(),
    kit: {
        adapter: adapter(),
        // 'warn' not 'fail': the resume's inline Typst SVG references a few
        // <use href="#glyphId"> glyph-dedup ids with no matching def (an
        // upstream typst-ts SVG-export quirk, harmless - text still renders
        // correctly). SvelteKit's crawler can't tell those apart from a real
        // dead anchor link, so it always flags /resume/ here.
        prerender: { handleMissingId: 'warn' },
    },
};
