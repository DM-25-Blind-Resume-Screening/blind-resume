<template>
	<div class="selected-candidates-display">
		<app-default-header></app-default-header>
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
