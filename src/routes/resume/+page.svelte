<script lang="ts">
    import IconDoc from "~icons/line-md/document-list";
    import IconLink from "~icons/line-md/external-link";
</script>

<div class="prose">
    <h1>Resume</h1>

    <div class="divider"><IconDoc class="size-24" /></div>

    <p>
        Built with <a href="https://typst.app">Typst</a> and precompiled via
        GitHub Actions! Feel free to <a href="/contact">contact</a> me for any additional
        information and/or suggestions.
    </p>

    <p></p>
</div>

<div class="relative">
    <a
        href="/resume.pdf"
        class="absolute btn btn-sm btn-circle btn-ghost right-0 m-3"
    >
        <IconLink class="size-5" />
    </a>
    <div class="overflow-auto rounded-box border-2 border-base-200 bg-base-100">
        <img src="/resume.svg" alt="My resume" class="w-full" />
    </div>
</div>
