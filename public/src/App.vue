<template>
  <div id="app">
    <app-homebanner></app-homebanner>
  </div>
</template>

<script>
import HomeBanner from './components/Home/HomeBanner.vue';
export default {
    components: {
      appHomebanner: HomeBanner
    }


}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}


</style>
