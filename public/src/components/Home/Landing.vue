<template>
	<div>
		<app-nav-bar></app-nav-bar>
		<app-landing-picture></app-landing-picture>
		<app-home-banner></app-home-banner>
		<app-why-we-exist></app-why-we-exist>
		<app-footer></app-footer>
		<app-info-block></app-info-block>
	</div>
</template>

<script>
	import HomeBanner from './LandingElements/HomeBanner.vue';
	import NavBar from './LandingElements/Navbar.vue';
	import LandingPicture from './LandingElements/LandingPicture.vue';
	import WhyWeExist from './LandingElements/WhyWeExist.vue';
	import Footer from './LandingElements/Footer.vue';
	import InfoBlock from './InfoBlock.vue'
	export default {
	    components: {
	      appHomeBanner: HomeBanner,
				appLandingPicture: LandingPicture,
				appNavBar: NavBar,
				appWhyWeExist: WhyWeExist,
				appFooter: Footer,
				appInfoBlock: InfoBlock
	    }
}

</script>

<style>
</style>
