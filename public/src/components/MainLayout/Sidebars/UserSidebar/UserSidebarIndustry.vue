<template>
<div>
    
      <h1 class="usi-h1">Job Industry</h1>
    <div class="checkbox-container">
      <md-checkbox md-theme="about" id="my-test2" name="my-test2" class="md-primary">{{ jobIndustries }}</md-checkbox>
    </div>
</div>
</template>

<script>


export default {
    data() {
        return {
            jobIndustries: 'Web Devlopement'
        }
    }
  
}
</script>

<style>

    
    .usi-h1 {
        font-size: 20px;
        font-weight: bold;
        color: #fff;
        margin: 80px 0 5px 20px;
    }

    .checkbox-container {
        background: #2062ae;
        width: 90%;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

</style>




