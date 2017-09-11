<template>
	<div>
		<app-content-header style="background: linear-gradient(45deg, #1CB48B, #2ED590)">
			<h1 class="nj-h1">Create New Job Post</h1>
		</app-content-header>
		
		<app-job-description 
			class="nj-editor" 
			@updateTitle="updateTitle"
			@updateType="updateJobType"
			@updateIndustry="updateIndustry"
			@updateDescription="updateDescription"></app-job-description>
		
		<app-responsibilities class="nj-editor" v-model="newJobPost.jobResponsibilities"></app-responsibilities>
		
		<app-key-qualifications class="nj-editor" v-model="newJobPost.jobKeyQualifications"></app-key-qualifications>
		
		<app-keyword-list v-model="newJobPost.jobKeywords"></app-keyword-list>
		
		<div class="nj-post-btn-container">
			<button class="nj-post-btn">Post job</button>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
import JobDescription from './JobPostElements/JobDescription.vue'
import Responsibilities from './JobPostElements/Responsibilities.vue'
import KeyQualifications from './JobPostElements/KeyQualifications.vue'
import KeywordList from './JobPostElements/KeywordList.vue'
export default {
	data() {
		return {
			newJobPost: {
				jobDescription: {
					title: '',
					jobType: null,
					industry: null,
					description: ''
				},
				jobResponsibilities: '',
				jobKeyQualifications: '',
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
		updateIndustry(val) {
			this.newJobPost.jobDescription.industry = val;
		},
		updateDescription(val) {
			this.newJobPost.jobDescription.description = val;
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
	margin: 20px auto;
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
	border: 1px solid #3f51b5;
	font-size: 15px;
	color: #3f51b5;

}

.nj-post-btn:hover {
	background: #3f51b5;
	color: #fff;
	cursor: pointer;
}

</style>
