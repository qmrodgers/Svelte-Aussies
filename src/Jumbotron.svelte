<script lang="ts">
    export let slogan: {text: string, style: string} = {text: "Default Slogan", style: ""};
    export let subtitle: {text: string, style: string} = {text: "This is the default subtitle for our slogan", style: ""};
    export let button: {text: string, style: string} = {text: "Press Me!", style: ""};
    export let customStylesContainer: string = "";
    export let customStylesVignette: string = "";
    export let imgSrc: {url: string, altText: string, style: string};

</script>


<div class="vignette" style="{customStylesVignette}"></div>
<div class="jt-img-div" style="background-image: url({imgSrc.url}); {imgSrc.style}" alt="{imgSrc.altText}"/>
<div class="jt-container" style="{customStylesContainer}">
<h1 class="jt-slogan" style="{slogan.style}">{@html slogan.text}</h1>
<p class="jt-subtitle" style="{subtitle.style}">{subtitle.text}</p>
<button class="jt-button" style="{button.style}">{button.text}</button>
</div>


<style>
.vignette {
    position: absolute;
    height: 100%;
    width: 100%;
    background-color: var(--primary-off-black);
    opacity: .6;
    z-index: -1;
    top: 0;
    left: 0;
}
.jt-img-div {
    z-index: -2;
}
.jt-container {
    position: absolute;
    top: 0;
    left: 0;
    height: 70vh;
    height: 100%;
    z-index: 0;
    display: grid;
    grid-template-columns: repeat(25, 1fr);
    grid-template-rows: repeat(25, 1fr);
}


</style>