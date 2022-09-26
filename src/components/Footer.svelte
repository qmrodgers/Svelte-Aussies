<script lang="ts">
    
declare module '@fortawesome/pro-solid-svg-icons/index.es' {
  export * from '@fortawesome/pro-solid-svg-icons';
}
import Fa from "svelte-fa"
import { faCaretDown, faCaretUp } from '@fortawesome/free-solid-svg-icons/index.es'
//container props
export let reverse: boolean = false;
export let reverseResponsive: boolean = false;
export let style: string = "";
//aside
export let aside: string = "";
export let asideStyle: string = "";
//nav props
export let reverseNav: boolean = false;
export let icons: {FaName: string, href: string, alt: string}[] = [];
export let navStyle: string = "";
export let iconSize: string = "2x";
</script>

<footer class:reversed={reverse} class:reversedResponsive={reverseResponsive} class="footer" style={style}>
    <!-- For copyright, extra content, etc-->
    <aside>
        <span style={asideStyle}>{aside}</span>
    </aside>

    <!-- Social media, email shorthands-->
    <nav class="nav" class:navReversed={reverseNav}>
        <address>
        </address>
        {#each icons as icon}
        <a href={icon.href} title={icon.alt}><Fa icon={FaGithub} fw/></a>
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
padding-block: 2px;
padding-inline: 1rem;
background: transparent;
}
footer >  :first-child {

}
.reversed {
flex-direction: row-reverse;
}
@media screen and (max-width: 900px) {
.reversedResponsive {
flex-direction: column-reverse;
}
}
</style>