<template lang="html">
  <div class="">
    <h1>Loading...</h1>
    <p>This page i loading</p>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  methods: {
    getUserInfo() {
      return axios.get(`/api/userInfo`)
            .then(res => {
              this.$router.push(`/app/user/${res.data.id}`)
            })
            .catch(err => console.log(err))
    }
  },
  created() {
    this.getUserInfo();
  }
}
</script>

<style lang="css">
</style>
