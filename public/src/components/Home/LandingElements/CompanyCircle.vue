<template>
  <div class="company_logo_div">
    <div class="company_logo">Hiring Companies</div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.company_logo_div {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  /*margin: 50px auto;*/
}
.company_logo {
  z-index: 20;
  display: flex;
  justify-content: center;
  color: white;
  align-items: center;
  display: flex;
  box-shadow: -1px 1px 20px 1px rgba(0,0,0,0.4);
  height: 150px;
  width: 150px;
  border-radius: 50%;
  background: linear-gradient(45deg,#4473ff,#87e2f2);
}
</style>
