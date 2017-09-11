<template>
	<div>
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Skills</h1>
			<img @click="isEditingSkillList = !isEditingSkillList" class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
		</div>
		<div class="ei-content-container">

		<md-input-container v-if="isEditingSkillList" class="jd-input-job-title" md-inline>
			<label>Enter skill here</label>
            <md-input 
            	v-model="newSkill"
            	@keyup.enter.native="addNewSkill"></md-input>
          </md-input-container>
		<div class="skill-list">
			<app-skill
				v-for="skill in skillsList"
				:key="skill.id"
				@skillDeleted="deleteSkill"
				:propskill="skill"
				:isEditing="isEditingSkillList">
			</app-skill>
			</div>
		</div>
	</div>
</template>

<script>
	import Skill from './Skill.vue'
	import axios from 'axios'
	export default {
	  props: ['skillsList', 'userResume'],
	  data() {
	  	return {
	  		isEditingSkillList: false,
	  		newSkill: ''
	  	}
	  },
	  components: {
		  appSkill: Skill
	  },
	  methods: {
	  	addNewSkill() {
	  		return axios.post(`http://localhost:3000/api/${this.userResume.id}/skill/new`, 
	  			{
	  				name: this.newSkill
	  			}
	  		).then(response => {
	  			console.log(response)
	  			this.skillsList.push(response.data[0])
	  			this.newSkill = '';
	  		})
	  		.catch(err => console.log(err))
	  	},
	  	deleteSkill(val) {
	  		console.log(val)
	  		let skillToRemove = this.skillsList.find(skill => skill.id == val)
	  		this.skillsList.splice(this.skillsList.indexOf(skillToRemove), 1);
	  	}
	  }
	}	
</script>

<style>
.skill-list {
	display: flex;
	flex-wrap: wrap;
}
</style>

