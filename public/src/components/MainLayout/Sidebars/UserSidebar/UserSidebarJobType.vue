<template>
      <md-checkbox md-theme="about" class="md-primary sidebar_option"> 
        <span class="sidebar_option_text">
          {{jobtype.name}}
        </span>
      </md-checkbox>
</template>

<script>
export default {
  props: ['jobtype']
}
</script>

<style>

.md-primary {
  margin-left: 20px;
}
</style>

