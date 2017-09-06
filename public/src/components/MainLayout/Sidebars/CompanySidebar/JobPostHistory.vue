<template>
  <div>
    <h1 class="jph-h1">History</h1>
    <h3 class="jph-h3">{{ jobPostInHistory }}</h3>
  </div>
</template>

<script>
export default {
    data() {
        return {
            jobPostInHistory: 'HR Manaager'
        }
    }
  
}
</script>


<style>
.jph-h1 {
    font-size: 19px;
    font-weight: bold;
    color: #fff;
    margin: 80px 0 5px 20px;
}

.jph-h3 {
    text-decoration: underline;
    margin-left: 20px;
}
</style>

