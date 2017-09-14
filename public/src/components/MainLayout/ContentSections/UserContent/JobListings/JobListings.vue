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
				searchType: [],
				searchKey: '',
				searchLocation: ''
			}
		},
		computed: {
			allJobPostings() {
				let allJobPosts = this.$store.state.allJobPostings
				const searchInd = this.searchIndustry
				const searchType = this.searchType


				if(searchInd.length) {
					allJobPosts = allJobPosts.filter(elem => searchInd.indexOf(elem.industry_id) > -1);
				}

				if(searchType.length) {
					allJobPosts = allJobPosts.filter(elem => searchType.indexOf(elem.job_type_id) > -1);
				}

				if(this.searchKey) {
					allJobPosts = allJobPosts.filter(elem => {
						return elem.job_keywords.some(keyword => keyword.name.toLowerCase() === this.searchKey.toLowerCase())
					})
				}

				if(this.searchLocation) {
					allJobPosts = allJobPosts.filter(elem => {
						return elem.location.toLowerCase().includes(this.searchLocation.toLowerCase());
					})
				}


				return allJobPosts
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
		mounted() {
			EventBus.$on('searchIndustryChanged', searchIndustry => {
				this.searchIndustry = searchIndustry
			})
			EventBus.$on('searchTypeChanged', searchType => {
				this.searchType = searchType
			})
			EventBus.$on('searchKeyword', val => {
				this.searchKey = val
			})
			EventBus.$on('searchLocation', val => {
				this.searchLocation = val
			})
			
		},
		created() {
			this.getAllJobPostings();
		}
	}
</script>
