<script lang="ts">
import Jumbotron from "./Jumbotron.svelte";

export let navLinks: {name: string, uri: string}[];
export let navIsOverlay: boolean = false;
export let brandImgSrc: string;
</script>

<div class:overlayNav={navIsOverlay} class="header-wrapper">
<nav class="navbar">
    <div class="link-box">
        <div class="links links-1">
        {#each navLinks as navLink, i}
            {#if i <= Math.floor(navLinks.length / 2) - 1}
            <a href={navLink.uri} class="nav-link"><span>{navLink.name}</span></a>
            {/if}
        {/each}
        </div>
        <div class="brand-box">
            <img class="brand" src="{brandImgSrc}" alt="Moonlight Aussies" />
        </div>
        <div class="links links-2">
            {#each navLinks as navLink, i}
            {#if i > Math.floor(navLinks.length / 2) - 1}
            <a href={navLink.uri} class="nav-link"><span>{navLink.name}</span></a>
            {/if}
        {/each}
        </div>
    </div>
</nav>
<slot></slot>
</div>

<style>
.navbar {
    display: flex;
    flex-direction: row;
    justify-content: center;
    padding-block: 1rem;
    width: 100%;
    
}

.brand-box {
    align-self: center;
    justify-self: center;


}
.brand {
    width: 200px;
}
.link-box {
    font-size: inherit;
    width: 800px;
    display:flex;
    justify-content: center;
}
.link-box > * {
flex-wrap: nowrap;
display: flex;
width: calc(100%/3);
}
.links {
    display: flex;
    position: relative;
    gap: 2rem;
    bottom: 1.5vh;
    align-items: center;
}
.links-1 {
    justify-content: flex-end;
}
.links-2 {
    justify-content: flex-start;


}
.brand-box {
    display: flex;
    justify-content: center;
}
.nav-link {
    display: inline-flex;
    font-size: var(--font-size-l);
    color: #FEFDED;
    font-family: 'Noto Sans';
    font-weight: 400;
    letter-spacing: 1px;
    position: relative;
    align-items: center;
    justify-content: center;
    height: fit-content;
}
.nav-link {
    text-shadow: 2px 2px 2px #000000;

}
.header-wrapper {
    width: 100vw;
    display:flex;
    justify-content: center;
    z-index: 1;
}
.overlayNav {
    position: fixed;
    top: 0;
    left: 0;
}
.nav-link > span {
    color: inherit;
    font-size: inherit;
    font-family: inherit;
    font-weight: inherit;
    letter-spacing: inherit;
    text-transform: uppercase;
    
}

.nav-link > span::after {
  content: '';
  position: absolute;
  display: inline-flex;
  width: 0%;
  left: 0;
  right: 0;
  bottom: -4px;
  margin: 0 auto;
  height: 0.1rem;
  background-color: #FEFDED;
  opacity: 0;
  transition: opacity 300ms, transform 300ms, width 400ms;
  box-shadow: 2px 3px 3px black;
}

.nav-link:hover > span::after,
.nav-link:focus > span::after {
  opacity: 1;
  transform: translate3d(0, 0.2rem, 0);
  width: 70%;
}

.nav-link:focus {
    outline: none;

    

}

.nav-link:focus > span {
    color: #3C7438;

}




</style>