<template>
	<div>
		<app-content-header>
			<h1>New Job Post</h1>
		</app-content-header>
		<h1>Job Description</h1>
		<app-job-description v-model="newJobPost.jobDescription"></app-job-description>
		<hr>
		<h1>Responsibilities</h1>
		<app-responsibilities v-model="newJobPost.jobResponsibilities"></app-responsibilities>
		<hr>
		<h1>Keywords</h1>
		<app-keyword-list v-model="newJobPost.jobKeywords"></app-keyword-list>
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
</style>