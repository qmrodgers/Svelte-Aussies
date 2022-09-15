<script lang="ts">
import axios from 'axios';
import Segment from '../components/Segment.svelte';
import Navbar from '../components/Navbar.svelte';
import { error } from '@sveltejs/kit';
import type { AppendTarget } from 'svelte/types/compiler/interfaces';
import type { Mouse } from '@playwright/test';



const Sections: string[] = ["seg-1", "seg-2"];
let currentSection: number = 0;
const NavLinks: {name: string, uri: string}[] = [{name: "Home", uri: "/"}, {name: "About", uri: "/"}, {name: "Dogs", uri: "./Dogs/"},  {name: "Contact", uri: "/"}];


//Scroll position variables
let yPositionPrevious: number;
let yPosition: number;
let yTolerance: number = 50;


//Targeted scrolling
export function scrollToElement({target}: any) {
    try {
        let el: HTMLElement | null = document.querySelector(target.getAttribute('href'));
        if (!el) {
            return;
        }
        el.scrollIntoView({behavior: 'smooth'});
    }
    catch (error) {
        console.log(error);
    }
    
}



function scrollBetween(yValue: number) {
const scrollDistance = yValue - yPositionPrevious;

if (Math.abs(scrollDistance) < 50) {
    console.log('less than');
    return;
}

if (scrollDistance > 0) {
    
}

}




$: scrollBetween(yPosition);
</script>

<svelte:window bind:scrollY={yPosition}/>


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

<Segment backgroundId="background-1" segmentId="seg-1" backgroundSrc={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public"} backgroundAlt="Australian Shepherd Puppy hidden behind leaves">
<div class="segment-text-container">
    <h1 class="segment-header">Taking great care in raising the perfect Australian</h1>
    <button class="segment-button"><a href="#seg-2" on:click|preventDefault={scrollToElement}>Learn More</a></button>
</div>
<div class="divider divider-1"></div>
</Segment>

<Segment segmentId="seg-2" backgroundSrc={"https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/99dc5385-5230-486b-9e4b-0f37a28fdd00/public"} backgroundAlt="Dog!">

</Segment>

<!-- end of Home Page HTML Content -->

<style>
@import url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@400;700&family=Kalam:wght@300;400;700&family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');    /*global values*/

    :global(:root) {
        --primary-off-white: hsl(0, 0%, 96%);
        --primary-white: hsl(0, 0%, 100%);
        --primary-off-black: #2E2E2E;
        --focus-color: #274d24;
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
        grid-column: 11/25;
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
        font-family: 'Amatic SC', sans-serif;
        text-transform: uppercase;
        font-weight: 700;
        letter-spacing: .35vw;
        font-size: clamp(var(--font-size-xxl), 5vmax, 200px);
        text-align:center;
        align-self: center;
        border-radius: 8px;

        
        /* -webkit-text-fill-color: #FEFDED; Will override color (regardless of order) */
        /* -webkit-text-stroke-width: 2px; */
        /* -webkit-text-stroke-color: black; */
        
        /* animation */
        opacity: 0;
        width: 80%;
        /*background-color: hsla(0, 0%, 8%, 0.5);
                backdrop-filter: blur(8px);
        */
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
        font-family: 'Kalam', sans-serif;
        font-weight: 400;
        width: fit-content;
        letter-spacing: .15vw;
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

    .segment-button > a::after {
        content: '';
        position: absolute;
        display: inline-flex;
        width: 0%;
        left: 0;
        right: 0;
        bottom: 14px;
        margin: 0 auto;
        height: 0.15rem;
        background-color: #FEFDED;
        opacity: 0;
        transition: opacity 300ms, transform 300ms, width 400ms;
        box-shadow: 2px 3px 3px black;

    }

    .segment-button:hover > a::after,
    .segment-button:focus > a::after {
        opacity: 1;
        transform: translate3d(0, 0.2rem, 0);
        width: 70%;
    }

    /* Global values for specific containers*/
    :global(#background-1) {
        transform: scaleX(-1);
        left: -25%;
        top: min(-15vw, -5vh);
    }
    
    @media screen and (max-width: 1280px) {
        .segment-text-container {
        grid-column: 2/24;
        grid-row: 1/21;
        }

    }



    @media screen and (max-width: 900px) {
        :global(.segment > .segment-bg) {
            left: -45vh !important;
            top: 0 !important;
        }

    }






    

    


</style>