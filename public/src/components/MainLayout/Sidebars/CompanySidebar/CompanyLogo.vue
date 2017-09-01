<template>
  <div class="cl-container">
      <div class="cl-logo-container">
        <img src="http://certifiedeurocollision.com/wp-content/uploads/2015/11/bmw-logo.png">
      </div>
      <div class="cl-company-name">
          <p class="cl-p">{{ companyName }}</p>
      </div>
  </div>
</template>

<script>
export default {
  data() {
      return {
          companyName: 'BMW'
      }
  }
}
</script>


<style>

    .cl-container {
        width: 100%;
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    .cl-logo-container {
        width: 80px;
        height: 80px;
        border-radius: 50px;
        position: relative;
        z-index: 7;
        text-align: center;
        margin-top: 30px;
    }

    .cl-company-name {
        text-align: center;
         z-index: 7;
    }

    .cl-p {
        color: #fff;
        font-size: 16px;
        margin-top: 5px;
    }
</style>

