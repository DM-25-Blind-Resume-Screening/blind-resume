<template>
  <div class="banner-div">
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
      colors: ['red', 'blue', 'green', 'orange', 'brown', 'black']
    }
  },
  components:{
    appHeadshots: Headshots,
    appCompanyCircle: CompanyCircle
  }
}
</script>

<style>
.banner-div {
width: 100%;
height:400px;
}
.wrappers {
  height: 350px;
  width: 800px;
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
  background-image: url('../../../assets/Head1.png');
  background-size: cover;
  left: 180px;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
/*.display_headshots .blue1 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin: 50px;
  left: 500px;
  background-image: url('../../assets/head2.png');
  background-size: cover;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
.display_headshots .green2 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 40px;
  left: 180px;
  background-image: url('../../assets/head3.png');
  border: 0.2px solid black;
  background-size: cover;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
.display_headshots .orange3 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 180px;
  right: 120px;
  background-image: url('../../assets/head4.png');
  background-size: cover;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
.display_headshots .brown4 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 110px;
  right: 15px;
  background-image: url('../../assets/head5.png');
  background-size: cover;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
.display_headshots .black5 {
  position: absolute;
  width: 50px;
  height: 50px;
  margin-top: 120px;
  background-image: url('../../assets/head6.png');
  background-size: cover;
  left: 80px;
  box-shadow: -20px 20px 120px 7px rgba(0,0,0,0.3);
}
*/

</style>
