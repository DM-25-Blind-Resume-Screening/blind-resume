<template>
  <div class="landing-picture-div">
    <div class="picture">
    </div>
    <div>
      <vue-typer
      :text='["hired.","better.","driven."]'
      :repeat='Infinity'
      :shuffle='false'
      initial-action='typing'
      :pre-type-delay='200'
      :type-delay='150'
      :pre-erase-delay='1500'
      :erase-delay='100'
      erase-style='backspace'
      :erase-on-complete='false'
      caret-animation='blink'>
      </vue-typer>
    </div>
  </div>
</template>

<script>
import { VueTyper } from 'vue-typer';
export default {
  components: {
    VueTyper
  }
}
</script>

<style lang="css">
.landing-picture-div {
  width: 100vw;
  height: 500px;
  z-index: -1;
}
.picture {
  width: 100%;
  height: 100%;
  background: linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2)), url('../../../assets/landing-picture.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}

.vue-typer {
  font-size: 60px;
}
</style>
