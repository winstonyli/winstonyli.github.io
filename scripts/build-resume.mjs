import { NodeCompiler } from '@myriaddreamin/typst-ts-node-compiler';
import { writeFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import path from 'node:path';

const [variant, outPath] = process.argv.slice(2);
if (!variant || !outPath) {
    console.error('Usage: build-resume.mjs <variant> <outPath>');
    process.exit(1);
}

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const mainFilePath = path.join(__dirname, '../src/lib/assets/resume.typ');

const compiler = NodeCompiler.create();
const pdf = compiler.pdf({ mainFilePath, inputs: { variant } });
writeFileSync(outPath, pdf);
