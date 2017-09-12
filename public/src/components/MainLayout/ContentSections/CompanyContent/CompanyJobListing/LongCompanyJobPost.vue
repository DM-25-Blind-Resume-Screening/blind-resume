<template>
	<div class="wrapper">
		<app-content-header style="background: linear-gradient(45deg, #2ED590, #1CB48B)">
			<h1>Job Post Info</h1>
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
	margin-left: 30px;
	margin-top: 30px;
	width: 880px;
}
.ljp-job-info-content {
	width: 880px;
}
.ljp-h2 {
	font-size: 17px;
	width: 880px;
	height: 30px;
	border-bottom: 1.5px solid #313131;
	margin-bottom: 20px;
}
.ljp-h3 {
	font-size: 15px;
	font-weight: 600;
	margin-top: 10px;
}
.ljp-p {
	margin-top: 10px;
}
</style>
