import Icons from 'unplugin-icons/vite';
import { defineConfig, type Plugin } from 'vite';
import { sveltekit } from '@sveltejs/kit/vite';
import { NodeCompiler } from '@myriaddreamin/typst-ts-node-compiler';

export default defineConfig({
    plugins: [sveltekit(), Icons({ compiler: 'svelte' }), typst()],
});

function typst(): Plugin {
    const typst = NodeCompiler.create();
    return {
        name: 'rollup-plugin-typst',
        transform(code, id) {
            if (id.endsWith('.typ'))
                return `export default ${JSON.stringify(typst.svg({ mainFilePath: id }))}`;
        },
    };
}
