<script lang="ts">
import { compute_rest_props } from "svelte/internal";

export let backgroundSrc: string;
export let backgroundAlt: string;

</script>


<section class="segment">
<div class="segment-cover"></div>
<img src={backgroundSrc} alt={backgroundAlt} class="segment-bg"/>
<div class="content">
    <slot></slot>
</div>
</section>


<style>
.segment {
    z-index: 0;
    position: relative;
    grid-template-columns: repeat(24, 1fr);
    grid-template-rows: repeat(24, 1fr);
    display: grid;
    place-items: center;
    height: 100vh;
    width: 100vw;
    overflow: hidden;
}
.segment > * {
grid-column: 1 / -1;
grid-row: 1 / -1;
}
.segment-bg {
    z-index: -2;
    min-width: 110vw;
    min-height: 110vh;
    overflow-y:hidden;
    
}
.segment-cover {
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    height: 100vh;
    width: 100vw;
    background-color: #000000;
    opacity: .4;

}

.segment > :global(.content) {
    place-self: start;
    display: grid;
    /*background-color: burlywood;*/
    grid-template-columns: repeat(24, 1fr);
    grid-template-rows: repeat(24, 1fr);
    grid-column-start: 1;
    grid-column-end: 25;
    grid-row-start: 6;
    grid-row-end: 25;
    width: 100vw;
    height: 100%;
    place-items: center;
}



</style>