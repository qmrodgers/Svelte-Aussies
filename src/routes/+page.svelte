<script lang="ts">
import Navbar from '../Navbar.svelte';
import Jumbotron from '../Jumbotron.svelte';
import jtCover from '../lib/images/puppy-1.jpg';

let NavLinks: {name: string, uri: string}[] = [{name: "Dogs", uri: "./Dogs/"},  {name: "Contact", uri: "/"}];
</script>

<svelte:head>
<title>Moonlight Aussies</title>
</svelte:head>
<!-- Home Page HTML Content -->

<Navbar brandText="Moonlight Aussies" navLinks={NavLinks} navIsOverlay={true}>
<Jumbotron
imgSrc={{url: jtCover, altText: "hello", style: "height: 70vh; background-position: -30vw center; background-repeat: no-repeat; background-size: 130vw;"}} 
slogan={{text: "Quality<br>Australian Shepherds<br>at a Great Price", style: "color: var(--primary-off-black);"}}
subtitle={{text: "Getting forever friends for you!", style:""}}
button={{text: "Find a friend", style: ""}}
/>
</Navbar>

<!-- end of Home Page HTML Content -->

<style>
    /*global values*/
    :global(:root) {
        --primary-off-white: hsl(0, 0%, 96%);
        --primary-white: hsl(0, 0%, 100%);
        --primary-off-black: hsl(0, 0%, 4%);
        font-size: 16px;
        --font-size-l: calc(1rem * 1.618);
        --font-size-xl: calc(var(--font-size-l) * 1.618);
        box-sizing: border-box;

    }
    :global(*, *:before, *:after) {
        box-sizing: border-box;
        margin: 0;
        padding: 0;

    }
    :global(body) {
        background-color: var(--primary-off-white);
    }
    :global(a) {
        text-decoration: none;
        color: var(--primary-white);
    }


</style>