<template>
	<div>
		<app-content-header>
			<h1>Create New Job Post</h1>
		</app-content-header>
		<app-job-description class="nj-editor" v-model="newJobPost.jobDescription"></app-job-description>
		<app-responsibilities class="nj-editor" v-model="newJobPost.jobResponsibilities"></app-responsibilities>
		<app-keyword-list v-model="newJobPost.jobKeywords"></app-keyword-list>
		<button class="nj-post-btn">Post job</button>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
import JobDescription from './JobPostElements/JobDescription.vue'
import Responsibilities from './JobPostElements/Responsibilities.vue'
import KeywordList from './JobPostElements/KeywordList.vue'
export default {
	data() {
		return {
			newJobPost: {
				jobDescription: '',
				jobResponsibilities: '',
				jobKeywords: []
			}
		}
	},
	components: {
		appContentHeader: DefaultHeader,
		appJobDescription: JobDescription,
		appResponsibilities: Responsibilities,
		appKeywordList: KeywordList
	}
}
</script>

<style>
.nj-editor {
	width: 75%;
	margin: 20px auto;
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