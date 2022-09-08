<script lang="ts">
import axios from 'axios';
import Navbar from '../Navbar.svelte';
import jtCover from '../lib/images/puppy-1.jpg';


let NavLinks: {name: string, uri: string}[] = [{name: "Home", uri: "/"}, {name: "About", uri: "/"}, {name: "Dogs", uri: "./Dogs/"},  {name: "Contact", uri: "/"}];

const getImage = () => {

}
</script>

<svelte:head>
<title>Moonlight Aussies</title>
</svelte:head>
<!-- Home Page HTML Content -->
<Navbar navLinks={NavLinks} navIsOverlay={true} brandImgSrc="images/logo/SVG/MALogo.svg">
</Navbar>

<!-- end of Home Page HTML Content -->

<style>
@import url('https://fonts.googleapis.com/css2?family=Kalam:wght@300;400;700&family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');    /*global values*/

    :global(:root) {
        --primary-off-white: hsl(0, 0%, 96%);
        --primary-white: hsl(0, 0%, 100%);
        --primary-off-black: hsl(0, 0%, 4%);
        font-size: 16px;
        --font-size-l: calc(1rem * 1.618);
        --font-size-xl: calc(var(--font-size-l) * 1.618);
        --font-size-xxl: calc(var(--font-size-xl) * 1.618);
        box-sizing: border-box;

    }
    :global(*, *:before, *:after) {
        box-sizing: border-box;
        margin: 0;
        padding: 0;

    }
    :global(body) {
        background-color: var(--primary-off-white);
        background-image: url(https://imagedelivery.net/UbkHQ0oC61zF_JRdwCtpAw/504817d5-f6c4-4c87-2629-819c91be4b00/public);
        background-repeat: no-repeat;
        background-size: 100%;
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
    .home-image {
        position: absolute;
        top: 0;
        left: 0;
        height: 140vh;
    }

    


</style>