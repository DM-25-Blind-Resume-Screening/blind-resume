<template>
  <div id="app">
    <app-navbar></app-navbar>
    <app-landingpicture></app-landingpicture>
    <app-homebanner></app-homebanner>
  </div>
</template>

<script>
import HomeBanner from './components/Home/HomeBanner.vue';
import Navbar from './components/Home/Navbar.vue';
import LandingPicture from './components/Home/LandingPicture.vue';
export default {
    components: {
      appHomebanner: HomeBanner,
      appNavbar: Navbar,
      appLandingpicture: LandingPicture
    }
}
</script>

<style>
#app {
  font-family: 'Avenir',  Arial, Helvetica, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  height: 400vh;
}


</style>
