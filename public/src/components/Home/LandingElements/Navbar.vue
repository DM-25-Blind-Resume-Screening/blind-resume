<template>
  <div class="navbar_div">
    <div class="nav">
      LOGIN
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.navbar_div {
  width: 100vw;
  height: 60px;
  background: linear-gradient(45deg,#87e2f2,#4473ff);
  display: flex;
  justify-content: flex-end;
  box-shadow: 1px 1px 10px 4px rgba(0,0,0,0.5);
  position:fixed;
  top: 0;
  opacity: 0.9;
  z-index: 999;
}
.navbar_div .nav {
  width: 100px;
  height: 30px;
  background: white;
  margin: auto 40px;
  font-weight: 400;
  font-size: 15px;
  display: flex;
  align-items: center;
  justify-content: center;
}
</style>
