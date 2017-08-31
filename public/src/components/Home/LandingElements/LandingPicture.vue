<template>
  <div class="landing-picture-div">
    <div class="typer-wrapper">
      <div class="be-div">BE</div>
      <div class="typer-div">
      <vue-typer
        :text='["hired.","better.","driven.","found.","fair."]'
        :repeat='Infinity'
        :shuffle='false'
        initial-action='typing'
        :pre-type-delay='200'
        :type-delay='100'
        :pre-erase-delay='1500'
        :erase-delay='50'
        erase-style='backspace'
        :erase-on-complete='false'
        caret-animation='blink'>
      </vue-typer>
    </div>
  </div>
    <div class="picture">
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
  position: relative;
}
.picture {
  width: 100%;
  height: 100%;
  background: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)), url('../../../assets/landing-picture.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center ;
}
.typer-wrapper {
  padding-top: 60px;
  height: 100%;
  width: 100%;
  position: absolute;
  display:flex;
  justify-content: center;
  align-items: center;
  flex-direction: row;
}
.typer-wrapper .be-div {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: auto;
  font-size: 60px;
  height: 60px;
  width: 100px;
  color: white;
}

.typer-div {
  color:white;
  height:60px;
  width: 220px;
  font-size: 60px;
}
.left{
  line-height: 1;
}
.vue-typer .custom.char.typed {
  color: white;
}
.vue-typer .custom.caret {
  width: 3px;
  height: 50px;
  background-color: white;
  line-height: 1;
}
</style>
