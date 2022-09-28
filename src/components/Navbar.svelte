<script lang="ts">
	import Jumbotron from './Jumbotron.svelte';
    import Fa from "svelte-fa";
    import {faBars, faXmark} from "@fortawesome/free-solid-svg-icons";
	export let navLinks: { name: string; uri: string }[];
	export let navIsOverlay: boolean = false;
	export let brandImgSrc: string;


    function toggleNav() {
        let btn = document.querySelectorAll('i');
        btn.forEach((el) => {
            el.classList.toggle('visible');
        })

        let navbar = document.querySelector('.navbar');
        if (navbar != undefined) {
            navbar.classList.toggle('collapse');
        }
    }


</script>

<div class:overlayNav={navIsOverlay} class="header-wrapper">
    <i class="expandBTN visible" on:click={toggleNav}><Fa icon={faBars} fw size="3x" style="position: absolute; left: 1rem; top: 1rem; color: #FEFDED; text-shadow: 2px 2px 8px black;"/></i>
    <i class="collapseBTN" on:click={toggleNav}><Fa icon={faXmark} fw size="3x" style="position: absolute; left: 1rem; top: 1rem; color: #FEFDED; text-shadow: 2px 2px 8px black;"/></i>
	<nav class="navbar collapse">
		<div class="brand-box">
			<img class="brand" src={brandImgSrc} alt="Moonlight Aussies" />
		</div>
		<div class="link-box">
			{#each navLinks as navLink}
				<a
					href={navLink.uri}
					on:click|preventDefault={() => {
						document.querySelector(navLink.uri)?.scrollIntoView({ behavior: 'smooth' });
                        toggleNav();
					}}
					class="nav-link"><span>{navLink.name}</span></a
				>
			{/each}
		</div>
	</nav>
	<slot />
</div>

<style>

@keyframes colorWarp {
        0% {
            background-position: top left;
        }
        50% {
            background-position: bottom right;
        }
        100% {
            background-position: top left;
        }
    }
    .header-wrapper > i {
        cursor: pointer;
    }

    .collapseBTN {
        display:none;
    }

    .expandBTN {
        display:none;
    }

	.navbar {
		display: flex;
		flex-direction: column;
		align-items: center;
        justify-content: center;
		padding-block: 1rem;
		width: 100%;
        gap: 1rem;
	}

	.brand-box {
		align-self: center;
		justify-self: center;
	}
	.brand {
        position: relative;
		width: 140px;
	}
	.link-box {
		font-size: inherit;
		width: 100%;
		display: flex;
		justify-content: center;
        gap: 1.5rem;
        transform: rotate(-3deg);

	}
	.link-box > * {
		flex-wrap: nowrap;
		display: flex;
        transform: skewY(-14deg);
        padding: 4px 2px;
	}
	.brand-box {
		display: flex;
		justify-content: center;
	}
	.nav-link {
		display: inline-flex;
		font-size: var(--font-size-xl);
		color: #fefded;
		font-family: 'Amatic SC';
		font-weight: 600;
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
		display: flex;
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
		bottom: 2px;
		margin: 0 auto;
		height: 0.15rem;
		background-color: #fefded;
		opacity: 0;
		transition: opacity 300ms, transform 300ms, width 400ms;
		box-shadow: 2px 3px 3px black;
	}

	.nav-link:hover > span::after,
	.nav-link:focus > span::after {
		opacity: 1;
		transform: translate3d(0, 0.2rem, 0);
		width: 60%;
	}

	.nav-link:focus {
		outline: none;
	}

    @media screen and (max-width: 900px) {

    .brand {
        width: 50vw;
    }
    
    i.visible {
        display: initial;
    }

    .navbar {
        justify-content: flex-start;
        max-height: 100vh;
        height: 100vh;
        overflow: hidden;
        background: linear-gradient(-45deg, var(--focus-color), var(--light-green), #2c8526);
        background-size: 400% 400%;
        animation: colorWarp 15s ease infinite;
        transition:1s;
        -webkit-transition:400ms ease;
        -moz-transition: max-height 400ms ease; 
        -ms-transition: max-height 400ms ease; 
        -o-transition: max-height 400ms ease; 
    }
    .navbar.collapse {
        transition:400ms ease;
        -webkit-transition:400ms ease;
        -moz-transition: max-height 400ms ease; 
        -ms-transition: max-height 400ms ease; 
        -o-transition: max-height 400ms ease; 
        height: auto;
        max-height:0;
        height: 100vh;
        padding: 0;
    }

    .link-box {
	    flex-direction: column;
        transform: rotate(0);

	}
	.link-box > * {
        transform: skewY(0);

	}

    .nav-link {

		font-size: var(--font-size-xxl);
	}
    .nav-link > span::after {
        bottom: -8px;
    }
    .nav-link:hover > span::after,
	.nav-link:focus > span::after {
		width: 17%;
	}
    }
</style>
