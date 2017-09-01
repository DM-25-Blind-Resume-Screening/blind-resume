<template>
	<div class="candidate-list">
		<app-candidate></app-candidate>
		<app-candidate></app-candidate>
		<app-candidate></app-candidate>
		<app-candidate></app-candidate>
	</div>
</template>

<script>
	import Candidate from './Candidate.vue'
	export default {
		components: {
			appCandidate: Candidate
		}
	}
</script>

<style>
	.candidate-list {
		margin: 30px 30px;
		width: 90%;
		height: 600px;
		/*background: pink;*/
	}

</style>
