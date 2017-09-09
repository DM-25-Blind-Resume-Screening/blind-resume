<template>
<div class="skill-text-container">
  
      <md-chip v-if="!isEditing">{{propskill.name}}</md-chip>
      <md-chip md-deletable @click.native="deleteResumeSkill"v-else>{{propskill.name}}</md-chip>
  </div>
</template>

<script>
	import axios from 'axios';	
	export default {
	  props: ['propskill', 'isEditing'],
	  methods: {
	  	deleteResumeSkill() {
	  		return axios.delete(`http://localhost:3000/api/skill/${this.propskill.id}`)
	  			.then(res => {
	  				this.$emit('skillDeleted', res.data[0].id)
	  			})
	  			.catch(err => console.log(err))
	  	}
	  }
	}
</script>

<style>
.skill-text-container {
  margin-top: 20px;
  margin-left: 20px;
}
</style>


