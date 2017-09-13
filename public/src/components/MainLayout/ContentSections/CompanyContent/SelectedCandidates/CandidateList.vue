<template>
	<div class="candidate-list">
		<app-candidate
			v-for="candidate in interviewCandidates"
			:key="candidate.id"
			:candidate="candidate"
		></app-candidate>
	</div>
</template>

<script>
	import Candidate from './Candidate.vue'
	export default {
		props: ['interviewCandidates'],
		components: {
			appCandidate: Candidate
		}
	}
</script>

<style>
	.candidate-list {
		margin: 30px 30px;
		width: 90%;
		height: 100px;
		/*background: pink;*/
	}

</style>
