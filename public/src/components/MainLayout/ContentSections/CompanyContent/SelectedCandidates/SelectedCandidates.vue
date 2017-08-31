<template>
	<div class="selected-candidates-display">
		<h1 class="sc-header">Selected Candidates</h1>
		<hr>
		<app-candidate-list></app-candidate-list>
	</div>
</template>

<script>
	import CandidateList from './CandidateList.vue'
	export default {
		components: {
			appCandidateList: CandidateList
		}
	}
</script>