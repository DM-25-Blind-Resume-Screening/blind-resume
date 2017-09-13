<template>
	<div >
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Experience</h1>
			<img @click="addingExperience = !addingExperience" class="plus" src="../../../../../../../assets/plus.svg"/>
		</div>
		<div class="el-padding-top"></div>
		<div class="el-content-container">
			<app-experience-item 
				v-for="experienceItem in experienceList" 
				:key="experienceItem.id" 
				:propExperience="experienceItem"
				@deletedExp="deleteExperience">
			</app-experience-item>

			<app-experience-inputs 
				v-if="addingExperience" 
				v-model="newExperience" 
				:newExperience="newExperience"
				@addedExp="addExperience"></app-experience-inputs>
		</div>
	</div>
</template>

<script>
import ExperienceItem from './ExperienceItem.vue'
import ExperienceInputs from './ExperienceInputs.vue'
import axios from 'axios'
export default {
	props: ['experienceList', 'resumeID'],
	data() {
		return {
			addingExperience: false,
			newExperience: {
				title: '',
				company: '', 
				from_date: '',
				to_date: '',
				description: ''
			}
		}
	},
	methods: {
		addExperience() {
			if(this.resumeID) {
				return axios.post(`http://localhost:3000/api/${this.resumeID}/experience/new`, 
						 {
						 	title: this.newExperience.title,
						 	company: this.newExperience.company,
						 	from_date: this.newExperience.from_date,
						 	to_date: this.newExperience.to_date,
						 	description: this.newExperience.description
						 }
					).then(response => {
						this.addingExperience = false;
							this.$emit('addedExp', Object.assign({}, this.newExperience));
				            this.newExperience.title = '';
				            this.newExperience.company = '';
				            this.newExperience.from_date = '';
				            this.newExperience.to_date = '';
				            this.newExperience.description = '';
					})
			}
			this.addingExperience = false;
			this.$emit('addedExp', Object.assign({}, this.newExperience));
            this.newExperience.title = '';
            this.newExperience.company = '';
            this.newExperience.from_date = '';
            this.newExperience.to_date = '';
            this.newExperience.description = '';
		},
		deleteExperience(val) {
			let itemToRemove = this.experienceList.find(item => item.id == val);
			this.experienceList.splice(this.experienceList.indexOf(itemToRemove), 1);
		}
	},

	components: {
		appExperienceItem: ExperienceItem,
		appExperienceInputs: ExperienceInputs
	}
}
</script>

<style>

.plus {
	margin-right: 10px;
	cursor: pointer;
}

.el-content-container {
	border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.el-padding-top {
	padding: 10px;
	border-right: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
}

</style>

