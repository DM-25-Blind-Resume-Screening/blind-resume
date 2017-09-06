<template>
	<div class="selected-candidates-display">
		<app-default-header>Selected Candidates</app-default-header>
		<app-candidate-list></app-candidate-list>
		<app-pagination></app-pagination>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import CandidateList from './CandidateList.vue'
	import Pagination from '../../UserContent/JobListings/Pagination.vue'
	export default {
		components: {
			appDefaultHeader: DefaultHeader,
			appCandidateList: CandidateList,
			appPagination: Pagination
		}
	}
</script>
