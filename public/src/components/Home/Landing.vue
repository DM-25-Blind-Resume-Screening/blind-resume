<template>
	<div>
		<app-nav-bar></app-nav-bar>
		<app-landing-picture></app-landing-picture>
		<app-home-banner></app-home-banner>
		<app-why-we-exist></app-why-we-exist>
	</div>
</template>

<script>
	import HomeBanner from './LandingElements/HomeBanner.vue';
	import NavBar from './LandingElements/NavBar.vue';
	import LandingPicture from './LandingElements/LandingPicture.vue';
	import WhyWeExist from './LandingElements/WhyWeExist.vue';
	export default {
	    components: {
	      appHomeBanner: HomeBanner,
				appLandingPicture: LandingPicture,
				appNavBar: NavBar,
				appWhyWeExist: WhyWeExist
	    }
	}
</script>

<style>

</style>
