<script lang="ts">
export let brandText: string;
export let navLinks: {name: string, uri: string}[];
export let navIsOverlay: boolean = false;
</script>

<div class:overlayNav={navIsOverlay} class="header-wrapper">
<div class="nav-wrapper">
<nav class="navbar">
    <div class="brand-box"><a class="brand-link" href="/">{brandText}</a></div>
    <div class="link-box">
        {#each navLinks as navLink}
            <a href={navLink.uri} class="nav-link">{navLink.name}</a>
        {/each}
    </div>
</nav>
</div>
<slot></slot>
</div>

<style>
.nav-wrapper {
    width: 100vw;
    background-color:var(--primary-white);
    color: var(--primary-off-black);
    z-index: 1;
    position: fixed;

}
.navbar {
    display: flex;
    flex-direction: row;
    height: 64px;
}
.navbar > * {
    flex-grow: 1;
    flex-wrap: nowrap;
    display: flex;
    padding-inline: 1.618rem;
}
.brand-box {
    justify-content: flex-start;
}
.link-box {
    font-size: inherit;
    justify-content: flex-end;
}
.brand-link, .nav-link {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    color: inherit;
    height: 100%;
}
.brand-link {
    font-size: var(--font-size-l);
    font-family: 'Open Sans';
    font-weight: 700;
    text-transform: uppercase;
}
.nav-link {
    width: 80px; 
    font-family: 'Open Sans';
}
.nav-link:hover {
    text-shadow: 2px 2px var(--primary-off-black);
}
.overlayNav {
    position: relative;
    top: 0;
    left: 0;
}
.header-wrapper {
    overflow: hidden;
}
.overlayNav >  .nav-wrapper{
    background-color: transparent;
    color: white;
    position: relative;
}
.overlayNav > .nav-wrapper {
position: absolute;
top: 0;
left: 0;
}


</style>