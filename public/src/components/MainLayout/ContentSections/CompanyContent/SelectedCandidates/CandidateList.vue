<template>
	<div class="candidate-list">
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