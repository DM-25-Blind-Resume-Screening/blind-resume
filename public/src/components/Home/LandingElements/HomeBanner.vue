<template>
  <div class="banner-div">
    <div class="wrappers">
      <app-company-circle></app-company-circle>
      <div class="display_headshots">
        <div v-for="(color, index) in colors">
          <app-headshots key="index" :class="color + index" :circleColor="color"></app-headshots>
          <app-animated-dots key="index" :class="color"></app-animated-dots>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CompanyCircle from './CompanyCircle.vue';
import Headshots from './Headshots.vue';
import AnimatedDots from './AnimatedDots.vue';

export default {
  data() {
    return {
      colors: ['red', 'blue', 'green', 'orange', 'brown', 'black', 'white', 'yellow', 'gray', 'pink']
    }
  },
  components:{
    appHeadshots: Headshots,
    appAnimatedDots: AnimatedDots,
    appCompanyCircle: CompanyCircle
  }
}
</script>

<style>
.banner-div {
width: 100%;
height:400px;
margin:70px auto;

}
.wrappers {
  height:400px;
  width: 1000px;
  margin: 0 auto;
  position: relative;

}
.display_headshots {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
}
.display_headshots .red0 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 260px;
  z-index: 30;
  filter: blur(3px);
  animation: blur 14s forwards;
  background-image: url('../../../assets/Head1.png');
  background-size: cover;
  left: 50px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .blue1 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin: 30px;
  z-index: 5;
  right: 20px;
  filter: blur(3px);
  animation: blur 7s forwards;
  background-image: url('../../../assets/Wilson.png');
  background-size: cover;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .green2 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 20px;
  filter: blur(3px);
  animation: blur 3s forwards;
  left: 80px;
  background-image: url('../../../assets/head3.png');
  border: 0.2px solid black;
  background-size: cover;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .orange3 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 240px;
  z-index: 20;
  right: 40px;
  filter: blur(3px);
  animation: blur 21s forwards;
  background-image: url('../../../assets/head4.png');
  background-size: cover;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .brown4 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 150px;
  right: 140px;
  z-index: 20;
  filter: blur(3px);
  animation: blur 33s forwards;
  background-image: url('../../../assets/head5.png');
  background-size: cover;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .black5 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 180px;
  filter: blur(3px);
  animation: blur 18s forwards;
  background-image: url('../../../assets/head6.png');
  background-size: cover;
  left: 200px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
.display_headshots .white6 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 320px;
  filter: blur(3px);
  z-index: 20;
  animation: blur 26.5s forwards;
  background-image: url('../../../assets/head7.png');
  background-size: cover;
  left: 316px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}.display_headshots .yellow7 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 310px;
  background-image: url('../../../assets/NewestLogan.png');
  background-size: cover;
  filter: blur(3px);
  animation: blur 11s forwards;
  right: 220px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}.display_headshots .gray8 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 45px;
  filter: blur(3px);
  animation: blur 24s forwards;
  background-image: url('../../../assets/head2.png');
  background-size: cover;
  left: 270px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}.display_headshots .pink9 {
  position: absolute;
  width: 65px;
  height: 65px;
  margin-top: 60px;
  filter: blur(3px);
  animation: blur 31s forwards;
  background-image: url('../../../assets/head8.png');
  background-size: cover;
  left: 660px;
  box-shadow: -20px 20px 100px 3px rgba(0,0,0,0.3);
}
@keyframes blur {
  0% {
    filter: blur(3px);
  }
  90% {
    filter: blur(3px);
  }
  100%{
    filter: blur(0px);
  }
}

@keyframes redmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(50px) translateY(170px) rotateZ(180deg);
  }
  100%{
    transform: translateX(400px) translateY(120px) rotateZ(360deg);
    opacity: 1
  }
}
@keyframes bluemove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(50px) translateY(140px) rotateZ(180deg);
  }
  100%{
    transform: translateX(-400px) translateY(120px) rotateZ(360deg);
    opacity: 1
  }
}
@keyframes greenmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(50px) translateY(-50px) rotateZ(180deg);
  }
  100%{
    transform: translateX(-230px) translateY(-100px) rotateZ(-15deg);
    opacity: 1
  }
}
@keyframes greenmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(50px) translateY(-50px) rotateZ(180deg);
  }
  100%{
    transform: translateX(-230px) translateY(-100px) rotateZ(-15deg);
    opacity: 1
  }
}
@keyframes orangemove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(50px) translateY(-50px) rotateZ(180deg);
  }
  100%{
    transform: translateX(430px) translateY(-50px) rotateZ(300deg);
    opacity: 1
  }
}
@keyframes brownmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(20px) translateY(-20px) rotateZ(180deg);
  }
  100%{
    transform: translateX(230px) translateY(-20px) rotateZ(300deg);
    opacity: 1
  }
}
@keyframes blackmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(60px) rotateZ(0deg);
  }
  100%{
    transform: translateX(-320px) translateY(-20px) rotateZ(-190deg);
    opacity: 1
  }
}
@keyframes blackmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(60px) rotateZ(0deg);
  }
  100%{
    transform: translateX(-320px) translateY(-20px) rotateZ(-190deg);
    opacity: 1
  }
}
@keyframes whitemove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(40px) rotateZ(0deg);
  }
  100%{
    transform: translateX(220px) translateY(100px) rotateZ(-190deg);
    opacity: 1
  }
}
@keyframes yellowmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(-80px) rotateZ(0deg);
  }
  100%{
    transform: translateX(120px) translateY(-100px) rotateZ(250deg);
    opacity: 1
  }
}
@keyframes graymove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(20px) rotateZ(180deg);
  }
  100%{
    transform: translateX(-90px) translateY(120px) rotateZ(140deg);
    opacity: 1
  }
}
@keyframes graymove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(0px) translateY(20px) rotateZ(180deg);
  }
  100%{
    transform: translateX(-90px) translateY(120px) rotateZ(140deg);
    opacity: 1
  }
}
@keyframes pinkmove {
  0% {
    transform: translateX(0%) translateY(0%) rotateZ(0deg);
    opacity: 0.4
  }
  50%{
    transform: translateX(-40px) translateY(40px) rotateZ(-180deg);
  }
  100%{
    transform: translateX(-280px) translateY(0px) rotateZ(0deg);
    opacity: 1
  }
}


.display_headshots .red {
  position: absolute;
  left: 100px;
  top: 20px;
  animation: 3s redmove forwards;
}

.display_headshots .blue {
  position: absolute;
  right: 100px;
  top: 15px;
  animation: 3s bluemove forwards ;
  animation-delay: 3.5s;
}
.display_headshots .green {
  position: absolute;
  right: 280px;
  bottom: 80px;
  animation: 3s greenmove forwards ;
  animation-delay: 7.5s;
}
.display_headshots .orange {
  position: absolute;
  left: 40px;
  bottom: 150px;
  animation: 3s orangemove forwards;
  animation-delay: 11s;
}
.display_headshots .brown {
  position: absolute;
  left: 210px;
  bottom: 210px;
  animation: 3s brownmove forwards;
  animation-delay: 14s;
}
.display_headshots .black {
  position: absolute;
  right: 100px;
  bottom: 150px;
  animation: 3s blackmove forwards;
  animation-delay: 17s;
}
.display_headshots .white {
  position: absolute;
  left: 277px;
  top: 70px;
  animation: 3s whitemove forwards;
  animation-delay: 20s;
}
.display_headshots .yellow {
  position: absolute;
  left: 320px;
  bottom: 57px;
  animation: 3s yellowmove forwards;
  animation-delay: 23s;
}
.display_headshots .gray {
  position: absolute;
  right: 330px;
  top: 57px;
  animation: 3s graymove forwards;
  animation-delay: 26s;
}
.display_headshots .pink {
  position: absolute;
  right: 200px;
  top: 157px;
  animation: 3s pinkmove forwards;
  animation-delay: 29s;
}

</style>
