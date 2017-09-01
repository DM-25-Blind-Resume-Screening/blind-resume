<template>
  <div>
    <h1 class="usjt-h1">Job Type</h1>
    <div class="checkbox-container-job-type">
      <md-checkbox md-theme="about" id="my-test2" name="my-test2" class="md-primary">{{ jobType }}</md-checkbox>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      jobType: 'Full-time'
    }
  }
}
</script>

<style>
.usjt-h1 {
  font-size: 19px;
  font-weight: bold;
  color: #fff;
  margin: 80px 0 5px 20px;
}

.checkbox-container-job-type {
  background: #3b83bf;
  width: 90%;
  height: 40px;
  display: flex;
  align-items: center;
}

.md-primary {
  margin-left: 20px;
}
</style>

