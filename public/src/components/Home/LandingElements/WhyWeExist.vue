<template>
<div>
  <div class="why-wrapper">
    <div class="header-div">
      <div class="line"></div>
      <h1>What we do</h1>
      <div class="line"></div>
    </div>
    <div class="explanation-div">
      <p class="paragraph">Studies did something</br> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation </p>
      <img class="picture1" src="../../../assets/choosing.jpg" alt="explanation">
    </div>
    <div class="explanation-div">
      <img class="picture1" src="../../../assets/ReadResume.jpg" alt="explanation">
      <p class="paragraph">We will help sensor applicant's demographic info to help eliminate bias in hiring process </br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
    </div>
    <div class="explanation-div">
      <p class="paragraph">Get hired!!!</br> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
      <img class="picture1" src="../../../assets/Interview.jpg" alt="explanation">
    </div>
  </div>
</div>
</template>

<script>
export default {
}
</script>

<style>
.why-wrapper {
  height: 1000px;
  width: 100%;
  display: flex;
  justify-content: space-around;
  align-items: center;
  flex-direction: column;

}
.header-div {
  height: 300px;
  width: 90%;
  font-size: 25px;
  display: flex;
  justify-content: space-between;
  align-items: center;

}
.line{
  height:1px;
  width: 40%;
  background: black;
}
.explanation-div {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  height: 800px;
  width: 75vw;
}
.paragraph {
  height: 150px;
  width: 700px;
}
.picture1 {
  height: 300px;
  width: 300px;
}



</style>
