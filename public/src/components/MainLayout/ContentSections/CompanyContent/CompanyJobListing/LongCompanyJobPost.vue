<template>
	<div class="wrapper">
		<app-content-header style="background: linear-gradient(45deg, #2ED590, #1CB48B)">
			<h1>Job Post Details</h1>
		</app-content-header>
		<div v-if="!longjobpost">Loading...</div>
		<div v-else class="content">
			<div v-if="!longjobpost">Loading..</div>
			<div v-else class="ljp-job-info-section">
				<h2 class="ljp-h2">{{longjobpost.title}}</h2>
			<div class="ljp-job-info-content">
				<h3 class="ljp-h3">Job Description</h3>
					<p class="ljp-p">{{longjobpost.job_description}}</p>
				<h3 class="ljp-h3">Responsibilities</h3>
					<li v-for="responsibility in longjobpost.responsibilities" :key="responsibility.id" class="ljp-p">{{responsibility.resp_text}}</li>
				<h3 class="ljp-h3">Key Qualifications</h3>
					<li v-for="qualification in longjobpost.qualifications" :key="qualification.id" class="ljp-p">{{qualification.qual_text}}</li>
			</div>
		</div>
		  <div class="lcjp-review-container">
				<p @click="goToApplications" class="ljp-p review-applicants">Review Applicants ({{longjobpost.applications_count}})</p>
				<p @click="goToShortList" class="ljp-p  shortlist review-applicants">Review Shortlist ({{longjobpost.shortlist_count}})</p>
				<p @click="goToCandidateList" class="ljp-p  shortlist review-applicants">Review Candidates ({{longjobpost.candidate_count}})</p>
			</div>
	</div>
</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue';
	import axios from 'axios';
	export default {
		data(){
			return {
				longjobpost: null,
				route: this.$route
			}
		},
		watch: {
			'$route': 'getLongJobpost'
		},
		methods: {
			getLongJobpost() {
				return axios.get(`http://localhost:3000/api/${this.$route.params.company_id}/posts/${this.$route.params.job_post_id}`)
					.then(res => {
						this.longjobpost = res.data[0]
						console.log(this.longjobpost)
					})
					.catch(err => console.log(err))
			},
			goToApplications() {
					this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.$route.params.job_post_id}/resumes`})
			},
			goToShortList() {
					this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.$route.params.job_post_id}/shortlist`})
			},
			goToCandidateList() {
					this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.$route.params.job_post_id}/candidates`})
			}
		},
		components: {
			appContentHeader: DefaultHeader
		},
		created() {
			this.getLongJobpost();
		}
	}
</script>

<style>
.ljp-job-info-section {
	margin-left: 40px;
	margin-top: 40px;
}
.ljp-job-info-content {
	width: 880px;
}
.ljp-h2 {
	font-size: 17px;
	width: 100%;
	height: 30px;
	border-bottom: 1.5px solid #2ED590;
	margin-bottom: 20px;
	font-weight: bold;
}
.ljp-h3 {
	font-size: 15px;
	font-weight: 600;
	margin-top: 10px;
}
.ljp-p {
	margin-top: 10px;
}
.lcjp-review-container {
    display: flex;
		margin-left: 40px;
		margin-top: 20px;
}
.review-applicants {
    color: #2ED590;
    font-weight: 600;
    cursor: pointer;
}
.ljp-p {
    margin-top: 6px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    max-width: 100ch;
}
.shortlist {
    margin-left: 40px;
}
</style>
