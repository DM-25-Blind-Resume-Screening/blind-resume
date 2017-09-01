<template>
	<div>
		<app-content-header>
			<h1>1,465 Jobs Found</h1>
		</app-content-header>
		<app-job-search-bar></app-job-search-bar>

		<app-job-list></app-job-list>

	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import JobList from './JobList.vue';
	import JobSearchBar from '../JobSearchBar/JobSearchBar.vue';
	export default {
		components: {
			appContentHeader: DefaultHeader,
			appJobList: JobList,
			appJobSearchBar: JobSearchBar
		}
	}
</script>
