<template>
	<div>
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Education</h1>
			<img @click="addingEducation = !addingEducation" class="plus" src="../../../../../../../assets/plus.svg"/>
		</div>
		<div class="el-padding-top"></div>
		<div class="ei-content-container">
			<app-education-item
				v-for="itemInList in educationList"
				:key="itemInList.id"
				:propsEducationInfo="itemInList"
				@deletedEdu="deleteEducation"
			></app-education-item>	

			<app-education-inputs
				v-if="addingEducation"
				v-model="newEducation"
				:newEducation="newEducation"
				@addedEdu="addEducation"
				></app-education-inputs>
		</div>
	</div>
</template>

<script>
	import EducationItem from './EducationItem.vue'
	import EducationInputs from './EducationInputs.vue'
	import axios from 'axios';
	export default {
		props: ['educationList', 'resumeID'],
		data() {
			return {
				addingEducation: false,
				newEducation: {
					school: '',
					degree: '',
					study_field: '',
					from_date: '',
					to_date: '',
					description: ''
				}
			}
		},
		methods: {
			addEducation() {
				if(this.resumeID) {
					return axios.post(`http://localhost:3000/api/${this.resumeID}/education/new`,
							{
								school: this.newEducation.school,
								degree: this.newEducation.degree,
								study_field: this.newEducation.study_field,
								from_date: this.newEducation.from_date,
								to_date: this.newEducation.to_date,
								description: this.newEducation.description
							}
						).then(response => {
							this.$emit('addedEdu', Object.assign({}, this.newEducation))
							this.addingEducation = false;
							this.newEducation.school = '';
							this.newEducation.degree = '';
							this.newEducation.study_field = '';
							this.newEducation.from_date = '';
							this.newEducation.to_date = '';
							this.newEducation.description = '';
						}).catch(err => console.log(err))
				}
				this.$emit('addedEdu', Object.assign({}, this.newEducation))
				this.addingEducation = false;
				this.newEducation.school = '';
				this.newEducation.degree = '';
				this.newEducation.study_field = '';
				this.newEducation.from_date = '';
				this.newEducation.to_date = '';
				this.newEducation.descri 
			},
			deleteEducation(val) {
				let itemToRemove = this.educationList.find(item => item.id == val)
				this.educationList.splice(this.educationList.indexOf(itemToRemove), 1);
			}
		},
		components: {
		  appEducationItem: EducationItem,
		  appEducationInputs: EducationInputs
	}
	}
</script>
