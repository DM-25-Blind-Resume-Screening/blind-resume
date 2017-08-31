<template>
<div class="wrapper">
  <div class="navbar_div"></div>
  <div class="logo-div"><img class="logo" src="../../../assets/BElogo.png"></div>
  <button class="login">LOGIN</button>
</div>
</template>

<script>
export default {

}
</script>

<style>
.wrapper {
  position: relative;
}
.navbar_div {
  width: 100vw;
  height: 60px;
  background: linear-gradient(45deg,#4473ff,#87e2f2);
  display: flex;
  justify-content: flex-end;
  box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.5);
  position:fixed;
  top: 0;
  opacity: 0.9;
  z-index: 9;
}
.logo-div {
  height: 60px;
  width: 120px;
  position: fixed;
  z-index: 999;
}
.logo{
  height: 60px;
  width: 120px;
}
.login {
  border: none;
  outline:none;
  cursor: pointer;
  width: 120px;
  height: 30px;
  background: white;
  position: fixed;
  top: 15px;
  right: 20px;
  font-weight: 400;
  border-radius: 15px;
  font-family: Helvetica;
  font-size: 15px;
  opacity: 1;
  z-index: 10;
  box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
