<template>
	<div>
		<app-content-header style="background: linear-gradient(45deg, #1CB48B, #2ED590)">
			<h1 class="nj-h1">Create New Job Post</h1>
		</app-content-header>

		<app-job-description
			class="nj-editor"
			@updateTitle="updateTitle"
			@updateType="updateJobType"
			@updateLocation="updateJobLocation"
			@updateIndustry="updateIndustry"
			@updateDescription="updateDescription"></app-job-description>

		<app-responsibilities
			@updateResp="updateResponsibilities"
			class="nj-editor"
			v-model="newJobPost.jobResponsibilities"></app-responsibilities>

		<app-key-qualifications
			@updateQual="updateQualifications"
			class="nj-editor"
			v-model="newJobPost.jobKeyQualifications"></app-key-qualifications>

		<app-keyword-list v-model="newJobPost.jobKeywords"></app-keyword-list>

		<div class="nj-post-btn-container">
			<button @click="createNewJobPost" class="nj-post-btn">Post job</button>
			<button @click="cancelAddJob" class="cancel-btn">Cancel</button>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
import JobDescription from './JobPostElements/JobDescription.vue'
import Responsibilities from './JobPostElements/Responsibilities.vue'
import KeyQualifications from './JobPostElements/KeyQualifications.vue'
import KeywordList from './JobPostElements/KeywordList.vue'
import axios from 'axios'
export default {
	data() {
		return {
			newJobPost: {
				jobDescription: {
					title: '',
					location: '',
					jobType: null,
					industry: null,
					description: ''
				},
				jobResponsibilities: [],
				jobQualifications: [],
				jobKeywords: []
			}
		}
	},
	methods: {
		updateTitle(val) {
			this.newJobPost.jobDescription.title = val
		},
		updateJobType(val) {
			this.newJobPost.jobDescription.jobType = val;
		},
		updateJobLocation(val) {
			this.newJobPost.jobDescription.location = val;
		},
		updateIndustry(val) {
			this.newJobPost.jobDescription.industry = val;
		},
		updateDescription(val) {
			this.newJobPost.jobDescription.description = val;
		},
		updateResponsibilities(val) {
			this.newJobPost.jobResponsibilities = val;
		},
		updateQualifications(val)  {
			this.newJobPost.jobQualifications = val;
		},
		createNewJobPost() {
			return axios.post(`http://localhost:3000/api/${this.$route.params.company_id}/job_post/new`,
					{
						industry: this.newJobPost.jobDescription.industry,
						jobType: this.newJobPost.jobDescription.jobType,
						title: this.newJobPost.jobDescription.title,
						description: this.newJobPost.jobDescription.description,
						responsibilities: this.newJobPost.jobResponsibilities,
						qualifications: this.newJobPost.jobQualifications,
						keywords: this.newJobPost.jobKeywords,
						location: this.newJobPost.jobDescription.location
					}
				).then(response => {
						this.clearInputs()
						this.$router.push({ path: `/app/company/${this.$route.params.company_id}`})
				}).catch(err => console.log(err));
		},
		cancelAddJob() {
			this.clearInputs()
			this.$router.push({path: `/app/company/${this.$route.params.company_id}`})
		},
		clearInputs() {
			this.newJobPost.jobDescription.industry = null
			this.newJobPost.jobDescription.jobType = null
			this.newJobPost.jobDescription.title = ''
			this.newJobPost.jobDescription.description = ''
			this.newJobPost.jobResponsibilities = []
			this.newJobPost.jobQualifications = []
			this.newJobPost.jobKeyword = []
		}
	},
	components: {
		appContentHeader: DefaultHeader,
		appJobDescription: JobDescription,
		appResponsibilities: Responsibilities,
		appKeywordList: KeywordList,
		appKeyQualifications: KeyQualifications
	}
}
</script>

<style>

.nj-h1 {
	font-size: 20px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 500;
	letter-spacing: 1px;
	margin-left: 20px;
}

.nj-editor {
	width: 75%;
	margin: 30px auto;
}

.nj-post-btn-container {
	width: 75%;
	margin: 20px auto;
	display: flex;
	justify-content: flex-end;
}

.nj-post-btn {
	width: 110px;
	height: 30px;
	background: transparent;
	border: 1px solid #1CB48B;
	font-size: 15px;
	color: #1CB48B;
}

.cancel-btn {
	width: 110px;
	height: 30px;
	font-size: 15px;
	margin-left: 20px;
	border: none;
	background: #1CB48B;
	color: #fff;
}
.cancel-btn:hover {
	background: #fff;
	color: #1CB48B;
	border: 1px solid #1CB48B;
	cursor: pointer;
}

.nj-post-btn:hover {
	background: #1CB48B;
	color: #fff;
	cursor: pointer;
}

</style>
