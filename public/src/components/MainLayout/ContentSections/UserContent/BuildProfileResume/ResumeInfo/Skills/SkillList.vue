<template>
	<div>
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Skills</h1>
			<img @click="isEditingSkills=true" class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
		</div>
		<div class="ei-content-container">

		<md-input-container class="jd-input-job-title" md-inline>
			<label>Enter skill here</label>
            <md-input></md-input>
        </md-input-container>
		<div class="skill-list">
			<app-skill
				v-for="skill in skillsList"
				:key="skill.id"
				:propskill="skill">
			</app-skill>
			</div>
		</div>
	</div>
</template>

<script>
import Skill from './Skill.vue'
export default {
  props: ['skillsList'],
  data() {
	  return {
		  isEditingSkills: false
	  }
  },

  components: {
	  appSkill: Skill
  }
}
</script>

<style>
.skill-list {
	display: flex;
	flex-wrap: wrap;
}
</style>

