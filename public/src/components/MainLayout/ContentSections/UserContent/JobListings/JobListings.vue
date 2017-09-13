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
	import {EventBus} from '../../../../../main.js'
	import {mapActions} from 'vuex'

	export default {
		data() {
			return {
				searchIndustry: [],
				searchType: []
			}
		},
		computed: {
			allJobPostings() {
				const allJobPosts = this.$store.state.allJobPostings
				const searchInd = this.searchIndustry
				const searchType = this.searchType
				if(searchInd.length && searchType.length) {
					return allJobPosts.filter(elem => searchInd.indexOf(elem.industry_id) >-1 && searchType.indexOf(elem.job_type_id) > -1)
				} else if (searchInd.length && !searchType.length) {
					return allJobPosts.filter(elem => searchInd.indexOf(elem.industry_id) > -1);
				} else if (!searchInd.length && searchType.length) {
					return allJobPosts.filter(elem => searchType.indexOf(elem.job_type_id) > -1);
				} else {
					return allJobPosts
				}
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
			EventBus.$on('searchIndustryChanged', searchIndustry => {
				this.searchIndustry = searchIndustry
			})
			EventBus.$on('searchTypeChanged', searchType => {
				this.searchType = searchType
			})
		}
	}
</script>
