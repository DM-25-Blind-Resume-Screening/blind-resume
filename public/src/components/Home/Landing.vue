<template>
	<div>
		<app-nav-bar></app-nav-bar>
		<app-landing-picture></app-landing-picture>
		<app-home-banner></app-home-banner>

	</div>
</template>

<script>
	import HomeBanner from './LandingElements/HomeBanner.vue';
	import NavBar from './LandingElements/NavBar.vue';
	import LandingPicture from './LandingElements/LandingPicture.vue'
	export default {
	    components: {
	      appHomeBanner: HomeBanner,
				appLandingPicture: LandingPicture,
				appNavBar: NavBar
	    }
	}
</script>

<style>

</style>
