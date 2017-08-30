<template>
  <div class="">
    <div class="wrappers">
      <app-company-circle></app-company-circle>
      <div class="display_headshots">
        <div v-for="(color, index) in colors">
          <app-headshots key="index" :class="color + index" :circleColor="color"></app-headshots>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CompanyCircle from './CompanyCircle.vue';
import Headshots from './Headshots.vue';

export default {
  data() {
    return {
      colors: ['red', 'blue', 'green', 'orange', 'white', 'black']
    }
  },
  components:{
    appHeadshots: Headshots,
    appCompanyCircle: CompanyCircle
  }
}
</script>

<style>
.wrappers {
  height: 350px;;
  width: 800px;
  background: pink;
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
  width: 50px;
  height: 50px;
  margin-top: 260px;
  left: 180px;
}
.display_headshots .blue1 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin: 50px;
  left: 500px;
}
.display_headshots .green2 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 40px;
  left: 180px;
}
.display_headshots .orange3 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 180px;
  right: 120px;
}
.display_headshots .white4 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 110px;
  right: 15px;
}
.display_headshots .black5 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 120px;
  left: 80px;
}


</style>
