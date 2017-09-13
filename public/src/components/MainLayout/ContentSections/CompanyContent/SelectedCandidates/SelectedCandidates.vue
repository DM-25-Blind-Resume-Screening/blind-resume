<template>
	<div class="selected-candidates-display">
		<app-default-header style="background: linear-gradient(45deg, #2ED590,#1CB48B)">Selected Candidates</app-default-header>
		<app-candidate-list :interviewCandidates="interviewCandidates"></app-candidate-list>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import CandidateList from './CandidateList.vue'
	import axios from 'axios'
	export default {
		data() {
			return {
				interviewCandidates: []
			}
		},
		components: {
			appDefaultHeader: DefaultHeader,
			appCandidateList: CandidateList
		},
		methods: {
			getInterviewCandidates() {
				return axios.get(`/api/job_postings/${this.$route.params.job_post_id}/candidates`)
						.then(res => {
							this.interviewCandidates = res.data
						})
						.catch(err => console.log(err))
			}
		},
		created() {
			this.getInterviewCandidates();
		}
	}
</script>
