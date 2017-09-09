<template>
<div class="skill-text-container">
  
      <md-chip md-deletable>{{propskill.name}}</md-chip>
  </div>
</template>

<script>
export default {
  props: ['propskill']
}
</script>

<style>
.skill-text-container {
  margin-top: 20px;
  margin-left: 20px;
}
</style>


