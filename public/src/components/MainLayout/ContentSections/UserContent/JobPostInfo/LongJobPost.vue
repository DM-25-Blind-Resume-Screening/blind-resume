<template>
	<div>
		<app-default-header v-if="!jobPost">Loading..</app-default-header>
		<app-default-header v-else>{{jobPost.title}}</app-default-header>
		<div v-if="!jobPost">Loading..</div>

		<div v-else class="company-info-section">
			<div class="longjp-logo-contain">
				<img class="longjp-logo" :src="jobPost.logo_url">
			</div>
			<div class="company-info-content">
				<h1 class="ljp-h1">Company Info</h1>
				<p class="ljp-p">{{jobPost.company}}</p>
				<p class="ljp-p">{{jobPost.location}}</p>
				<p class="ljp-p">{{jobPost.job_type}}</p>
			</div>
		</div>

		<div v-if="!jobPost">Loading..</div>
		<div v-else class="ljp-job-info-section">
			<h2 class="ljp-h2">{{jobPost.title}}</h2>
		<div class="ljp-job-info-content">
			<h3 class="ljp-h3">Job Description</h3>
				<p class="ljp-p">{{jobPost.job_description}}</p>
			<h3 class="ljp-h3">Responsibilities</h3>
				<li v-for="responsibility in jobPost.responsibilities" :key="responsibility.id" class="ljp-p">{{responsibility.resp_text}}</li>
			<h3 class="ljp-h3">Key Qualifications</h3>
				<li v-for="qualification in jobPost.qualifications" :key="qualification.id" class="ljp-p">{{qualification.qual_text}}</li>
		</div>
		<div class="ljp-btns-container">
			<!-- <button class="ljp-save-job-btn">Save Job</button> -->
			<button @click="submitResume" class="ljp-apply-btn">Apply</button>
		</div>
		</div>

	</div>
</template>


<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';
import axios from 'axios'
export default {
	data() {
		return {
			jobPost: null
		}
	},
	components: {
		appDefaultHeader: DefaultHeader
	},
	methods: {
		getJobPostInfo() {
			return axios.get(`/api/job_postings/${this.$route.params.job_post_id}`)
				.then(res => this.jobPost = res.data[0])
				.catch(err => console.log(err))
		},
		submitResume() {
			return axios.post(`/api/${this.jobPost.id}/${this.$route.params.user_id}/submit`)
					.then(() => {
						alert('Thank you for applying')
						this.$router.push({path: `/app/user/${this.$route.params.user_id}`})
					}).catch(err => console.log(err))
		}
	},
	created() {
		this.getJobPostInfo()
	}
}
</script>


<style>

.longjp-logo {
	object-fit: cover;
}

.longjp-logo-contain {
	width: 120px;
	height: 120px;
	border-radius: 50%;
	overflow: hidden;
}

.company-info-section {
	display: flex;
	margin: 60px 60px;
}

.company-info-content {
	margin-left: 60px;
}

.ljp-job-info-section {
	margin-left: 60px;
	width: 880px;
}


.ljp-h1 {
	font-size: 20px;
	width: 700px;
	border-bottom: 1.5px solid #313131;
}

.ljp-h2 {
	font-size: 17px;
	width: 880px;
	border-bottom: 1.5px solid #313131;
}

.ljp-h3 {
	font-size: 15px;
	font-weight: 600;
	margin-top: 10px;
}

.ljp-p {
	margin-top: 10px;
}

.ljp-btns-container {
	display: flex;
	justify-content: flex-end;
	margin-top: 40px;
	margin-bottom: 40px;
}

.ljp-save-job-btn {
	width: 110px;
	height: 30px;
	font-family: 'Avenir' Arial, Helvetica, sans-serif;
	color: #313131;
	font-size: 15px;
	background: transparent;
	outline: none;
	border: 1px solid #3f51b5;
	margin-right: 20px;
}

.ljp-save-job-btn:hover {
	background: #3f51b5;
	color: #fff;
	cursor: pointer;
}

.ljp-apply-btn {
	width: 110px;
	height: 30px;
	font-family: 'Avenir' Arial, Helvetica, sans-serif;
	color: #fff;
	font-size: 15px;
	background: #3f51b5;
	outline: none;
	border: none;
}

.ljp-apply-btn:hover {
	cursor: pointer;
}
</style>
