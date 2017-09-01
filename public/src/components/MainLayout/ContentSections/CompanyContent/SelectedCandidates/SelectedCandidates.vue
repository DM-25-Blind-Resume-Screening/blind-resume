<template>
	<div class="selected-candidates-display">
		<app-default-header></app-default-header>
		<h1 class="sc-header">Selected Candidates</h1>
		<hr>
		<app-candidate-list></app-candidate-list>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import CandidateList from './CandidateList.vue'
	export default {
		components: {
			appDefaultHeader: DefaultHeader,
			appCandidateList: CandidateList
		}
	}
</script>
