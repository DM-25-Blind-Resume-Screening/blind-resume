<template>
	<div class="wrapper">
		<app-content-header>
			<h1>Job Post Info</h1>
		</app-content-header>
		<div v-if="!longjobpost">Loading...</div>
		<div v-else class="content">
			<h1>{{longjobpost.company}}</h1>
			<h3>Description</h3>
			<p>{{longjobpost.job_description}}</p>
			<h3>Responsibilities</h3>
			<div>{{longjobpost.responsibilities}}</div>
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

</style>
