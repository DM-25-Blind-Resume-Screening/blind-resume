<template>
	<div>
		<app-company-logo :companyInfo="companyInfo"></app-company-logo>
		<h1 class="jph-h1">Current Openings</h1>
		<div class="jph_wrapper">
			<app-job-post-history v-for="jobPost in companyJobPosts" :key="jobPost.id" :jobPost="jobPost"></app-job-post-history>
		</div>
	</div>
</template>

<script>
import CompanyLogo from './CompanyLogo.vue';
import JobPostHistory from './JobPostHistory.vue';
import axios from 'axios'
export default {
	data() {
		return {
			companyInfo: [],
			companyJobPosts: []
		}
	},
	components: {
		appCompanyLogo: CompanyLogo,
		appJobPostHistory: JobPostHistory
	},
	methods: {
		getCompanyInfo() {
			return axios.get(`http://localhost:3000/api/company/${this.$route.params.company_id}`)
					.then(response => {
						this.companyInfo = response.data[0]
					}).catch(err => console.log(err))
		},
		getJobPosts() {
			return axios.get(`http://localhost:3000/api/${this.$route.params.company_id}/job_postings`)
						.then(res => {
							this.companyJobPosts = res.data
						}).catch(err => console.log(err))
		},
	},
	created() {
		this.getCompanyInfo()
		this.getJobPosts()
	}

}
</script>


<style>
	.jph_wrapper {
		display: flex;
		flex-direction: column;
	}
</style>
