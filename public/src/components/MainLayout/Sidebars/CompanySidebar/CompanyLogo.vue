<template>
  <div class="cl-container">
      <div class="cl-logo-container">
        <img :src="companyInfo.logo_url" style="border-radius: 50%">
      </div>
      <div class="cl-company-name">
          <p class="cl-p">{{ companyInfo.name }}</p>
      </div>
  </div>
</template>

<script>
export default {
  props: ['companyInfo']
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
        width: 100px;
        height: 100px;
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

