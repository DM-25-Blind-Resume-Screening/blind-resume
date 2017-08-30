<template>
  <div class="landing-picture-div">
    <div class="picture">

    </div>
  </div>
</template>

<script>
export default {
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
  background: linear-gradient(rgba(211,211,211,0.3),rgba(211,211,211,0.3)), url('../../../assets/landing-picture.jpg');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}
</style>
