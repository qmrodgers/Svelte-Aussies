<script lang="ts">
import { compute_rest_props } from "svelte/internal";
export let coverId: string;
export let segmentId: string;

</script>


<section class="segment" id={segmentId}>
<div class="segment-cover" id={coverId}></div>
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

.segment-cover {
    
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    height: 100vh;
    width: 100vw;
    background: linear-gradient(to right, hsla(0, 0%, 0%, .8) 40%, hsla(0, 0%, 0%, 0) 60%);
    opacity: 0.8;

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


@media screen and (max-width: 1280px) {
    .segment-cover {
        background: linear-gradient(hsla(0, 0%, 0%, .1) 10%, hsla(0, 0%, 0%, .8) 50%, hsla(0, 0%, 0%, .1) 90%);
    }
}


</style>