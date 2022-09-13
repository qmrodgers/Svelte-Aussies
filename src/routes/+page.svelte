<script lang="ts">
import axios from 'axios';
import Segment from '../components/Segment.svelte';
import Navbar from '../components/Navbar.svelte';


let NavLinks: {name: string, uri: string}[] = [{name: "Home", uri: "/"}, {name: "About", uri: "/"}, {name: "Dogs", uri: "./Dogs/"},  {name: "Contact", uri: "/"}];

</script>

<svelte:head>
<title>Moonlight Aussies</title>
<meta charset="UTF-8"/>
<meta name="description" content="Moonlight Aussies is a family friendly breeder that takes great care in raising the perfect Australian."/>
<meta name="keywords" content="Australian Shepherd, Puppies for Sale, Evansville Indiana, Dogs for Sale, Australian Shepherds, Aussies, Moonlight Aussies"/>
<meta name="author" content="Quaid Rodgers"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<!-- Preload first image --><link rel="preload" as="image" href={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public"}/>
</svelte:head>
<!-- Home Page HTML Content -->
<Navbar navLinks={NavLinks} navIsOverlay={true} brandImgSrc="images\logo\2x\MALogo.png"/>

<Segment backgroundSrc={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public"} backgroundAlt="Australian Shepherd Puppy hidden behind leaves">
<div class="segment-text-container">
    <h1 class="segment-header">Taking great care in raising the perfect Australian</h1>
    <button class="segment-button"><span>Learn More</span></button>
</div>
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
        max-width: 100vw;
    }
    :global(a) {
        text-decoration: none;
        color: var(--primary-white);
    }
    :global(body > div) {
        width: 100vw;
    }
    @keyframes fade-in-translate {
        from {
            opacity: 0;
            translate: 0px 300px;
        }
        to {
            opacity: 1;
            translate: 0 0;
        }
    }

    @keyframes fade-in {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
    .segment-text-container {
        grid-column: 1/17;
        grid-row: 1/20;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        align-self: center;
        justify-self: center;
    }
    .segment-header {
        color: #FEFDED;
        text-shadow: 2px 2px 8px black;
        font-family: 'Noto Sans', sans-serif;
        text-transform: uppercase;
        font-weight: 500;
        letter-spacing: .35vw;
        font-size: clamp(var(--font-size-xl), 4vmax, var(--font-size-xxl));
        text-align:center;
        align-self: center;
        border-radius: 8px;
        
        /* -webkit-text-fill-color: #FEFDED; Will override color (regardless of order) */
        /* -webkit-text-stroke-width: 2px; */
        /* -webkit-text-stroke-color: black; */
        
        /* animation */
        opacity: 0;
        width: 80%;
        background-color: hsla(0, 0%, 8%, 0.5);
        animation: fade-in-translate 2.2s ease;
        animation-delay: 400ms;
        animation-fill-mode: forwards;
    }

    /*
    .divider {
        background-color: #FEFDED;
        height: 100%;
        width: 2px;
        border-radius: 4px;
        justify-self: center;
        align-self: center;
        grid-column: 14 / 14;
        grid-row: 6 / 19;
        box-shadow: 2px 2px 3px black;
    }
    */
    .segment-button {
        position: relative;
        font-size: clamp(var(--font-size-l), 3vmax, var(--font-size-xl));
        background-color: transparent;
        cursor: pointer;
        font-family: 'Noto Sans', sans-serif;
        font-weight: 600;
        width: fit-content;
        letter-spacing: .15vw;
        text-transform: uppercase;
        padding: 10px;
        align-self: center;
        border: none;
        color: #FEFDED;
        -webkit-text-stroke: 0px black;
        text-shadow: 2px 2px 8px black;
        transition: color 300ms;
        /* animation */
        opacity: 0;
        animation: fade-in 1s ease;
        animation-delay: 2.6s;
        animation-fill-mode: forwards;
        
    }
    .segment-button:focus, .segment-button:hover {
        color: #FEFDED;           
    }

    .segment-button > span::after {
        content: '';
        position: absolute;
        display: inline-flex;
        width: 0%;
        left: 0;
        right: 0;
        bottom: 4px;
        margin: 0 auto;
        height: 0.15rem;
        background-color: #FEFDED;
        opacity: 0;
        transition: opacity 300ms, transform 300ms, width 400ms;
        box-shadow: 2px 3px 3px black;

    }

    .segment-button:hover > span::after,
    .segment-button:focus > span::after {
        opacity: 1;
        transform: translate3d(0, 0.2rem, 0);
        width: 70%;
    }
    @media screen and (min-width: 1900px) {

        .segment-text-container {
        grid-column: 2/15;
        grid-row: 1/21;
        }
        :global(.segment > .segment-bg) {
            
            top: -300px !important;
            left: 0 !important;
            
        }
    }

    @media screen and (min-width: 1600px) and (max-width: 1899px) {
        .segment-text-container {
        grid-column: 1/15;
        grid-row: 1/21;
        }


        :global(.segment > .segment-bg) {
            
            top: -100px !important;
            left: 0 !important;
            
        }
    }

    @media screen and (max-width: 900px) {
        .segment-text-container {
        grid-column: 2/24;
        grid-row: 1/25;
        }

        :global(.segment > .segment-bg) {
            
            min-height: 100vh !important;
            min-width: 100vw !important;
            top: auto !important;
            left: -450px !important;
            
        }
    }





    

    


</style>