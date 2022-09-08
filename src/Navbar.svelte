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
    padding-block: 1.618rem;
    padding-inline: 10vw;
    width: 100%;
    
}
.navbar > * {
    display: flex;
    padding-inline: 1.618rem;
}
.brand-box {
    align-self: center;
    justify-self: center;


}
.brand {
    height: 25vh;
}
.link-box {
    font-size: inherit;
    width: 100%;
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
    gap: 2.5vw;
    bottom: 1.5vh;
}
.links-1 {
    justify-content: flex-end;
    right: -5vw;
}
.links-2 {
    justify-content: flex-start;
    left: -5vw;

}
.brand-box {
    display: flex;
    justify-content: center;
}
.nav-link {
    display: inline-flex;
    font-size: var(--font-size-l);
    color: var(--primary-off-white);
    font-family: 'Noto Sans';
    font-weight: 300;
    letter-spacing: 1px;
    
    align-items: center;
    justify-content: center;
    height: 100%;
}
.nav-link:hover {
    text-shadow: 2px 2px var(--primary-off-black);
}
.header-wrapper {
    width: 100vw;
    display:flex;
    justify-content: center;
}
.overlayNav {
    position: relative;
    top: 0;
    left: 0;
}
a > span {
    color: inherit;
    font-size: inherit;
    font-family: inherit;
    font-weight: inherit;
    letter-spacing: inherit;
}

a > span::after {
  content: '';
  position: absolute;
  align-self: flex-end;
  display: block;
  width: 200px;
  height: 0.1rem;
  background-color: hotpink;
  opacity: 0;
  transition: opacity 300ms, transform 300ms;
}

a:hover > span::after,
a:focus > span::after {
  opacity: 1;
  transform: translate3d(0, 0.2rem, 0);
}




</style>