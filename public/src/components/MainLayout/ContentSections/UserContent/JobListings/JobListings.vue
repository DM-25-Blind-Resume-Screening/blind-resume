<template>
	<div>
		<app-content-header>
			<h1>{{allJobPostings.length}} Jobs Found</h1>
		</app-content-header>
		<app-job-search-bar></app-job-search-bar>

		<app-job-list
			:allJobPostings="allJobPostings">
		</app-job-list>

	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import JobList from './JobList.vue';
	import JobSearchBar from '../JobSearchBar/JobSearchBar.vue';
	import {mapActions} from 'vuex'
	export default {
		computed: {
			allJobPostings() {
				return this.$store.state.allJobPostings
			}
		},
		components: {
			appContentHeader: DefaultHeader,
			appJobList: JobList,
			appJobSearchBar: JobSearchBar
		},
		methods: {
			...mapActions(['getAllJobPostings'])
		},
		created() {
			this.getAllJobPostings();
		}
	}
</script>
