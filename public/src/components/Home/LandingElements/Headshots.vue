<template>
  <div class="headshots">
  </div>
</template>

<script >
  export default {
    props: ['circleColor']
  }
</script>

<style>

.headshots {
  height: 50px;
  width: 50px;
  border-radius: 50%;
}
.dot {
  margin: 20px 20px;
  height:15px;
  width:10px;
  background: black;
  position: absolute;
  animation: move 2s infinite alternate;
  animation-delay: 2s;
}

@keyframes move {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.2
  }
  20%{
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
  }
  80%{
    transform: translateX(480px) translateY(0px) rotateZ(0deg);

  }
  100%{
    transform: translateX(480px) translateY(-60px) rotateZ(-360deg);

  }
}



</style>
