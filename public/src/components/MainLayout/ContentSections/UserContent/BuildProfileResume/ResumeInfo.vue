<template>
	<div>
		<app-content-header>
			<h1 class="ri-h1">My Resume</h1>
		</app-content-header>
		<app-demographic-info></app-demographic-info>
		<div class="ri-container">
			<app-experience-list :experienceList="userResumeExperience"></app-experience-list>
			<app-experience-inputs></app-experience-inputs>
			<app-education-list :educationList="userResumeEducation"></app-education-list>
			<app-education-inputs></app-education-inputs>
			<app-skill-list :skillsList="userResumeSkills"></app-skill-list>
			<app-skills-input></app-skills-input>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';
import DemographicInfo from './DemographicInfo.vue';
import ExperienceList from './ResumeInfo/Experience/ExperienceList.vue'
import ExperienceInputs from './ResumeInfo/Experience/ExperienceInputs.vue'
import EducationList from './ResumeInfo/Education/EducationList.vue'
import EducationInputs from './ResumeInfo/Education/EducationInputs.vue'
import SkillList from './ResumeInfo/Skills/SkillList.vue'
import SkillsInput from './ResumeInfo/Skills/SkillsInput.vue'
import axios from 'axios'
export default {
	data() {
		return {
			userResume: null,
			userResumeEducation: null,
			userResumeExperience: null,
			userResumeSkills: null
		}
	},
	methods: {
		getUserResume() {
			return axios.get(`http://localhost:3000/api/${this.$route.params.user_id}/resume`)
				.then(result => {
					console.log(result.data)
					this.userResume = result.data[0]
					this.userResumeEducation = result.data[0].resume_education
					this.userResumeExperience = result.data[0].resume_work_experience
					this.userResumeSkills = result.data[0].resume_skills
					})
				.catch(err => console.log(err))
		}
	},

	created() {
		this.getUserResume()
	},

	components: {
		appContentHeader: DefaultHeader,
		appDemographicInfo: DemographicInfo,
		appExperienceList: ExperienceList,
		appExperienceInputs: ExperienceInputs,
		appEducationList: EducationList,
		appEducationInputs: EducationInputs,
		appSkillList: SkillList,
		appSkillsInput: SkillsInput
	}
}
</script>

<style>
.ri-h1 {
	font-size: 20px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 500;
	letter-spacing: 1px;
	margin-left: 20px;
}

.ri-container {
	width: 75%;
	margin: 20px auto;
}
</style>