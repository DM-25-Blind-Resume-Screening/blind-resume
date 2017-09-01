<template>
	<div>
		<app-content-header>
			<h1>New Job Post</h1>
		</app-content-header>
		<app-job-description class="nj-editor" v-model="newJobPost.jobDescription"></app-job-description>
		<app-responsibilities class="nj-editor" v-model="newJobPost.jobResponsibilities"></app-responsibilities>
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