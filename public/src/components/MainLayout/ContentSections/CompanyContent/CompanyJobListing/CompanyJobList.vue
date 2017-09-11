<template>
	<div>
		<app-default-header>
			<h1>Current Job Postings</h1>
		</app-default-header>
		<app-short-company-job-post
			v-for="job in shortjobposts"
			:key="job.id"
			:job="job"
		></app-short-company-job-post>
		<div @click="goToNewJobPost" class="add-btn">
			<md-button md-theme="add" class="md-fab md-fab-bottom-right md-primary">
				<md-icon>add</md-icon>
			</md-button>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';
import ShortCompanyJobPost from './ShortCompanyJobPost.vue';
import axios from 'axios';
export default {
	data(){
		return {
			shortjobposts: null
		}
	},
	methods: {
		getJobposts() {
			return axios.get(`http://localhost:3000/api/${this.$route.params.company_id}/job_postings`)
									.then(res => {
										this.shortjobposts = res.data
									})
									.catch(err => console.log(err))
		},
		goToNewJobPost() {
			this.$router.push({path: `/app/company/${this.$route.params.company_id}/newJob`})
		}
	},
	components: {
		appDefaultHeader: DefaultHeader,
		appShortCompanyJobPost: ShortCompanyJobPost
	},
	created() {
		this.getJobposts();
	}
}
</script>

<style>

.add-btn {
	position: fixed;
	right: 0;
	bottom: 0;
}
</style>
