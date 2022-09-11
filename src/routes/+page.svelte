<script lang="ts">
import axios from 'axios';
import Segment from '../components/Segment.svelte';
import Navbar from '../components/Navbar.svelte';


let NavLinks: {name: string, uri: string}[] = [{name: "Home", uri: "/"}, {name: "About", uri: "/"}, {name: "Dogs", uri: "./Dogs/"},  {name: "Contact", uri: "/"}];

</script>

<svelte:head>
<title>Moonlight Aussies</title>
<!-- Preload first image --><link rel="preload" as="image" href={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public"}/>
</svelte:head>
<!-- Home Page HTML Content -->
<Navbar navLinks={NavLinks} navIsOverlay={true} brandImgSrc="images\logo\2x\MALogo.png"/>

<Segment backgroundSrc={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public"} backgroundAlt="Australian Shepherd Puppy hidden behind leaves">
<h1>Bringing Aussies to the evansville / vanderburgh area for over 5 years.</h1>
<div class="divider divider-1"></div>
</Segment>

<Segment backgroundSrc={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/99dc5385-5230-486b-9e4b-0f37a28fdd00/public"} backgroundAlt="Dog!">

</Segment>

<!-- end of Home Page HTML Content -->

<style>
@import url('https://fonts.googleapis.com/css2?family=Kalam:wght@300;400;700&family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');    /*global values*/

    :global(:root) {
        --primary-off-white: hsl(0, 0%, 96%);
        --primary-white: hsl(0, 0%, 100%);
        --primary-off-black: #2E2E2E;
        font-size: 16px;
        --font-size-l: calc(1rem * 1.618);
        --font-size-xl: calc(var(--font-size-l) * 1.618);
        --font-size-xxl: calc(var(--font-size-xl) * 1.618);
        --font-size-jumbo: calc(var(--font-size-xxl) * 1.618);
        box-sizing: border-box;

    }
    :global(*, *:before, *:after) {
        box-sizing: border-box;
        margin: 0;
        padding: 0;

    }
    :global(body) {
        min-height: 100vh;
        background-color: var(--primary-off-white);
        font-family: 'Noto Sans', sans-serif;
        font-weight: 300;
        overflow-x:hidden;
    }
    :global(a) {
        text-decoration: none;
        color: var(--primary-white);
    }
    :global(body > div) {
        width: 100vw;
    }
    h1 {
        color: #FEFDED;
        text-shadow: 2px 2px 3px black;
        font-family: 'Noto Sans', sans-serif;
        text-transform: uppercase;
        font-weight: 400;
        letter-spacing: 4px;
        font-size: clamp(var(--font-size-xl), 2.5vw, var(--font-size-xxl));
        text-align: right;
        grid-column: 3/13;
        grid-row: 4/16;
        align-self: center;
        
    }

    .divider {
        background-color: #FEFDED;
        height: 90%;
        width: 5px;
        /*border-radius: 4px;*/
        justify-self: center;
        align-self: center;
        grid-column: 13 / 13;
        grid-row: 6 / 18;
        box-shadow: 2px 2px 3px black;
    }




    

    


</style>