<template>
	<div>
		<app-content-header>
			<h1 class="ri-h1">My Resume</h1>
		</app-content-header>
		<app-demographic-info></app-demographic-info>
		<div class="ri-container">
			<app-experience-list @addedExp="pushToExp":experienceList="userResumeExperience"></app-experience-list>
			<app-education-list @addedEdu="pushToEdu" :educationList="userResumeEducation"></app-education-list>
			<app-skill-list :userResume="userResume" :skillsList="userResumeSkills" v-if="resumeExists"></app-skill-list>
			<app-skills-input v-model="userResumeSkills" v-else></app-skills-input>
			<button @click="saveResume" v-if="!resumeExists">Save Resume</button>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';
import DemographicInfo from './DemographicInfo.vue';
import ExperienceList from './ResumeInfo/Experience/ExperienceList.vue'
import EducationList from './ResumeInfo/Education/EducationList.vue'
import SkillList from './ResumeInfo/Skills/SkillList.vue'
import SkillsInput from './ResumeInfo/Skills/SkillsInput.vue'
import {EventBus} from '../../../../../main.js';
import axios from 'axios'
export default {
	data() {
		return {
			resumeExists: false,
			userResume: [],
			userResumeEducation: [],
			userResumeExperience: [],
			userResumeSkills: [],
		}
	},
	methods: {
		getUserResume() {
			return axios.get(`http://localhost:3000/api/${this.$route.params.user_id}/resume`)
				.then(result => {
					this.userResume = result.data[0]
					this.userResumeEducation = result.data[0].resume_education
					this.userResumeExperience = result.data[0].resume_work_experience
					this.userResumeSkills = result.data[0].resume_skills
					this.resumeExists = true;
					})
				.catch(err => console.log(err))
		},
		pushToExp(val) {
			this.userResumeExperience.push(val);
		},
		pushToEdu(val) {
			this.userResumeEducation.push(val);
		},
		saveResume() {
			return axios.post(`http://localhost:3000/api/${this.$route.params.user_id}/resume/new`, 
					{
						linkedin: null,
						portfolio: null,
						work_exp: JSON.stringify(this.userResumeExperience),
						education: JSON.stringify(this.userResumeEducation),
						skills: this.userResumeSkills
					}
				).then(() => {
					this.getUserResume();
				}).catch(err => console.log(err))
		}
	},

	mounted() {
		this.getUserResume()
	},

	components: {
		appContentHeader: DefaultHeader,
		appDemographicInfo: DemographicInfo,
		appExperienceList: ExperienceList,
		appEducationList: EducationList,
		appSkillList: SkillList,
		appSkillsInput: SkillsInput
	},

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


<!-- 	data() {
		return {
			work_exp: [{"title": "Web Developer", "company": "Adobe", "from_date": "6/2017", "to_date": "present", "description": "Worked on adding features to photoshop and illustrator.  Collaborate with other professionals"},
			{"title": "School Psychologist", "company": "Putnam County School Board", "from_date": "8/2015", "to_date": "present", "description": "Small group and individual counseling.  Psychoeducational assessment"},
			{"title": "Sales Associate", "company": "Best Buy", "from_date": "11/2008", "to_date": "8/2012", "description": "Sell stuff, hate life"}],
			education: [{"school": "University of Florida", "degree": "Education Specialist(Ed.S.)", "study_field": "School Psychology", "from_date": "8/2012", "to_date": "5/2015", "description": "Graduate studies"},
			{"school": "NASA Clown College", "degree": "Doctor of Philosophy (Ph.D.)", "study_field": "Clown Aerodynamics", "from_date": "8/2008", "to_date": "5/2011", "description": "Space Clown School"},
			{"school": "DevMountain", "degree": "Full Stack Developer", "study_field": "Web Development", "from_date": "8/2012", "to_date": "5/2015", "description": "Coding Bootcamp"}],
		}
	}, -->

	<!-- 	methods: {
		createResume() {
			return axios.post('http://localhost:3000/api/1/resume/new', 
				{
					linkedin: 'stuff',
					portfolio: 'stuff',
					work_exp: JSON.stringify(this.work_exp),
					education: JSON.stringify(this.education)
				}
			).then(() => console.log('resume created'))
			.catch(err => console.log(err));
		}
	},
	created() {
		this.createResume()
	} -->