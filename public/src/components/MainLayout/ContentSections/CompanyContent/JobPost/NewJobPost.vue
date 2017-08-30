<template>
	<div>
		<app-content-header>
			<h1>New Job Post</h1>
		</app-content-header>
		<app-job-description></app-job-description>
		<app-responsibilities></app-responsibilities>
		<app-keyword-list></app-keyword-list>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import JobDescription from './JobPostElements/JobDescription.vue'
	import Responsibilities from './JobPostElements/Responsibilities.vue'
	import KeywordList from './JobPostElements/KeywordList.vue'
	export default {
		components: {
			appContentHeader: DefaultHeader,
			appJobDescription: JobDescription,
			appResponsibilities: Responsibilities,
			appKeywordList: KeywordList
		}
	}
</script>