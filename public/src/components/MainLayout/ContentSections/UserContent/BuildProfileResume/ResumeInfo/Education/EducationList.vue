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
	export default {
		props: ['educationList'],
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
				this.addingEducation = false;
				this.$emit('addedEdu', Object.assign({}, this.newEducation))
				this.newEducation.school = '';
				this.newEducation.degree = '';
				this.newEducation.study_field = '';
				this.newEducation.from_date = '';
				this.newEducation.to_date = '';
				this.newEducation.from_date = '';
				this.newEducation.description = '';
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
