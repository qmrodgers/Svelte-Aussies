

<script lang="ts">
export let data: import('./$types').PageData;

import Segment from '../components/Segment.svelte';
import Navbar from '../components/Navbar.svelte';
import Footer from '../components/Footer.svelte';
import { onMount } from 'svelte';
import { validate_each_argument } from 'svelte/internal';

import {faEnvelope, faPhoneSquare} from "@fortawesome/free-solid-svg-icons";
import {faFacebookSquare} from "@fortawesome/free-brands-svg-icons";


let currentSection: number = 0;
const NavLinks: {name: string, uri: string}[] = [{name: "Home", uri: "#home-segment"}, {name: "About", uri: "#about-segment"},  {name: "Contact", uri: "#contact-segment"}];

let segmentCheckpoints: number[] = new Array<number>(4);
let currentCheckpoint: number = 0;

let windowHeight: number;
let yPosition: number;



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

onMount(() => {

});

function mapCheckpoints(Windowsize: number) {
[...segmentCheckpoints].forEach((element, index) => {
segmentCheckpoints[index] = windowHeight * index;

});

}

$: mapCheckpoints(windowHeight);
</script>
<svelte:window bind:scrollY={yPosition} bind:innerHeight={windowHeight}/>




<svelte:head>
<title>Moonlight Aussies - Evansville, Indiana</title>
<meta charset="UTF-8"/>
<meta name="description" content="Moonlight Aussies - A family-friendly breeder based in Evansville, Indiana that takes great care in raising the perfect Australian Shepherd."/>
<meta name="keywords" content="Australian Shepherd, Puppies for Sale, Evansville Indiana, Dogs for Sale, Australian Shepherds, Aussies, Moonlight Aussies"/>
<meta name="author" content="Quaid Rodgers"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</svelte:head>



<!-- Home Page HTML Content -->
<Navbar navLinks={NavLinks} navIsOverlay={true} brandImgSrc="images\logo\2x\MALogo.png"/>

{#each segmentCheckpoints as checkpoint, i}
{#if i > 0}
<img id="background-{i}" class="bg" src='images/backgrounds/background-{i}.jpg' style="z-index: {0-i}; opacity: {yPosition >= segmentCheckpoints[i-1] ? (1.1-((yPosition - segmentCheckpoints[i-1])/(checkpoint - segmentCheckpoints[i-1]) + .1)) : 1};" alt="Aussies Background {i+1}"/>
{/if}
{/each}

<Segment segmentId="home-segment" coverId="cover-1">
    <summary class="segment-text-container">
        <header class="segment-header">Taking great care in raising the perfect Australian pups</header>
        <button class="segment-button"><a href="#about-segment" on:click|preventDefault={scrollToElement}>Learn More</a></button>
    </summary>
</Segment>

<Segment segmentId="about-segment" coverId="cover-2">
    <main class="segment-text-container">
        <header class="segment-header">Who we are</header>
        <p class="segment-body">Started in 2015, Moonlight Aussies has continuously worked to ensure that families leave with a loving friend who'll bring them joy for years to come.</p>
        <button class="segment-button"><a href="#contact-segment" on:click|preventDefault={scrollToElement}>Get in touch</a></button>   
    </main>
</Segment>

<Segment segmentId="contact-segment" coverId="cover-3">
    <article class="segment-text-container">
        <header class="segment-header">Contact Us</header>
        <p class="segment-body">For information on currently available pups, or to get a quote, contact Daniel Grimwood at <a href="tel:+18126296621">(812) 629-6621</a> or via email at <a href="mailto:dangrimwood812@gmail.com">dangrimwood812@gmail.com</a>. Visit us on <a href="https://www.facebook.com/moonlightaussies/">Facebook</a>!</p>
        <button class="segment-button"><a href="#home-segment" on:click|preventDefault={scrollToElement}>Back to top</a></button>
    </article>
</Segment>

<Footer icons={[{FaName: faFacebookSquare, href: "https://www.facebook.com/moonlightaussies/", alt: "Visit us on Facebook!", exText: ""}, {FaName: faEnvelope, href: "mailto:dangrimwood812@gmail.com", alt: "Contact through Email", exText: ""}, {FaName: faPhoneSquare, href: "tel:+18126296621", alt: "Call Daniel Grimwood at (812) 629-6621", exText: ""}]} aside="© Moonlight Aussies" asideStyle="color: #FEFDED; font-size: 1rem;" iconSize="lg" fontSize="var(--font-size-l)" style="font-family: 'Amatic SC';" navStyle="opacity: 1;"/>
<!-- end of Home Page HTML Content -->


<style>
@import url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@400;700&family=Open+Sans:wght@400;500;600;700;800&family=Merriweather:ital,wght@0,300;0,400;0,700;1,300;1,400&family=Reem+Kufi+Fun:wght@400;500;600;700&display=swap');




    :global(::-webkit-scrollbar) {
        width: .5rem;

    }

    :global(::-webkit-scrollbar-track) {
        background: #161816;
        overflow:hidden;

    }

    :global(::-webkit-scrollbar-thumb) {
        background: linear-gradient(to bottom, var(--focus-color), var(--light-green), var(--focus-color));


    }

    :global(:root) {
        --primary-off-white: hsl(0, 0%, 96%);
        --primary-white: hsl(0, 0%, 100%);
        --primary-off-black: #2E2E2E;
        --light-green: #3C7438;
        --focus-color: #274d24;
        font-size: 16px;
        --font-size-l: 1.5rem;
        --font-size-xl: 2rem;
        --font-size-xxl: 3rem;
        --font-size-jumbo: 4rem;
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

    .segment-body {
        color: #FEFDED;
        font-family: 'Amatic SC';
        font-weight: 300;
        word-spacing: 1px;
        font-size: clamp(2rem, 3.5vw, 3rem);
        padding-inline: 10vw;
        text-align: center;
    }

    .segment-body > a {
        font-weight: 600;
    }

    .bg {

    position: fixed;
    z-index: -2;
    min-width: 135vw;
    min-height: 135vh;
    max-width: 2000px;
    aspect-ratio: 1;
    
    
    top: 0;
    place-self: center;

    }
        /* Global values for specific containers*/
        :global(#background-1) {
        
        top: min(-20vw, -10vh);
        right: -35%;
    }

    :global(#background-2) {
        
        top: min(-15vw,-5vh);
    }

    :global(#background-3) {
        top: min(-10vw,-5vh);
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
        grid-column: 1/16;
        grid-row: 1/23;
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
        letter-spacing: 0.30vw;
        font-size: clamp(var(--font-size-xxl), 4vw,var(--font-size-jumbo));
        text-align:center;
        align-self: center;
        border-radius: 8px;
        opacity: 0;
        width: 80%;
        animation: fade-in-translate 2.2s ease;
        animation-delay: 400ms;
        animation-fill-mode: forwards;
    }
    .segment-button {
        position: relative;
        font-size: var(--font-size-xxl);
        background-color: transparent;
        cursor: pointer;
        font-family: 'Amatic SC', sans-serif;
        font-weight: 700;

        width: fit-content;
        padding: 0 10px 0 10px;
        text-transform: uppercase;
        word-spacing: 2px;
        letter-spacing: 2px;
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
    .segment-button > a {
        color: #FEFDED;
    }

    .segment-body > a {
        position: relative;
    }

    .segment-button > a::after, .segment-body > a::after {
        content: '';
        position: absolute;
        display: inline-flex;
        width: 0%;
        left: 0;
        right: 0;
        bottom: 0.15rem;
        margin: 0 auto;
        height: 2px;
        background-color: #FEFDED;
        opacity: 0;
        transition: opacity 300ms, transform 300ms, width 400ms;
        box-shadow: 2px 3px 3px black;

    }



    .segment-body > a::after {
        bottom: .35rem;
        height: 1px;
    }

    .segment-body > a:hover::after, .segment-body > a:focus::after {
        opacity: 1;
        transform: translate3d(0, 0.4rem, 0);
        width: 80%;
        outline: none;
        border: none;
    }

    *:focus{
        outline: none;
    }

    .segment-button:hover > a::after,
    .segment-button:focus > a::after {
        opacity: 1;
        transform: translate3d(0, 0.4rem, 0);
        width: 60%;
        outline: none;
        border: none;
    }


    


    
    @media screen and (max-width: 1280px) {
        .segment-text-container {
        grid-column: 2/24;
        grid-row: 1/19;
        
        }

        :global(#background-1) {
        
        
        left: -600px;
    }
    :global(#background-3) {
        left: -500px;
    }
        

    }



    @media screen and (max-width: 900px) {
        :global(.segment > .segment-bg) {
            left: -750px !important;
            top: 0 !important;
        }


        :global(#background-1) {
        
        top: -35vh;
        left: -750px;
    }

    :global(#background-2) {
        top: -15vh;
        left: -750px;
    }

    :global(#background-3) {
        top: -15vh;
        left: -750px;
    }

    }






    

    


</style>