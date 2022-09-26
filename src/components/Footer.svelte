<script lang="ts">

    

import type { IconDefinition } from "@fortawesome/fontawesome-common-types";
import Fa from "svelte-fa"
//container props
export let reverse: boolean = false;
export let reverseResponsive: boolean = false;
export let style: string = "";
//aside
export let aside: string = "";
export let asideStyle: string = "";
//nav props
export let reverseNav: boolean = false;
export let icons: {FaName: IconDefinition, href: string, alt: string, exText: string}[] = [];
export let navStyle: string = "";
export let fontSize: string = "1rem";
export let iconSize: string = "2x";
export let emailAddress: string = "#";
export let addressTitle: string = "";
export let emailAlt: string = "";
</script>

<footer class:reversed={reverse} class:reversedResponsive={reverseResponsive} class="footer" style={style + `font-size: ${fontSize};`}>
    <!-- For copyright, extra content, etc-->
    <aside>
        <span style={asideStyle}>{aside}</span>
    </aside>

    <!-- Social media, email shorthands-->
    <nav class="nav" class:navReversed={reverseNav} style={navStyle}>
        {#if emailAddress != "#"}
        <address>
            <a href={`mailto:${emailAddress}`} title={emailAlt}>{addressTitle}</a>
        </address>
        {/if}
        {#each icons as icon}
        <a href={icon.href} title={icon.alt}><Fa icon={icon.FaName} size={iconSize}/>{icon.exText}</a>
        {/each}
    </nav>
</footer>

<style>
/* default footer element styling */
footer {
position: fixed;
bottom: 0;
left: 0;
width: 100vw;
display: flex;
flex-direction: row;
justify-content: center;
padding-block: .5rem;
background: transparent;
}
footer >  * {
width: clamp(50%, 100%, 100%);
display: flex;
padding-inline: 4rem;
gap: 1rem;
}

address {
    font-style: normal;
}
aside > span {
    display: inline-flex;
    align-items: center;
    opacity: .4;
}
footer > nav {
    justify-content: flex-end;
}

.navReversed { /* Nav should stay as row, reverse if needed*/
    flex-direction: row-reverse;
    justify-content: flex-start;
}

.reversed {
flex-direction: row-reverse;
}

.reversed > nav {
    justify-content: flex-start;
}

nav > a {
    opacity: .4;
transition: opacity 200ms ease;
}

nav > a:hover {
    opacity: 1 !important;
}

@media screen and (max-width: 900px) {

footer {
flex-direction: column;
align-items: center;
padding: .5rem;
}

footer {
    gap: .25rem;
}

aside {
    justify-content: center;
}

footer > nav,.navReversed {
    justify-content: center;
}



.reversedResponsive {
flex-direction: column-reverse;
justify-content: start;
align-items: center;
}
}
</style>