<template>
  <div>
      <div class="ui-profile-pic">
          <img width="110px" src="../../../../assets/head3.png">
      </div>
      <div class="ui-user-name">
          <p>{{ userName }}</p>
      </div>
      
  </div>
</template>

<script>
export default {
  data() {
      return {
          userName: 'Ashley Schuette'
      }
  }
}
</script>


<style>
    .ui-profile-pic {
        text-align: center;
        margin-top: 30px;
    }

    .ui-user-name {
        text-align: center;
    }
</style>

