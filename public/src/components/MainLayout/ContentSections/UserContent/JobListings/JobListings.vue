<template>
	<div>
		<app-content-header>
			<div class="number-div">1,000</div>
			<h1 class="jl-active-jobs">  Jobs Found</h1>
		</app-content-header>
		<app-job-search-bar></app-job-search-bar>

		<app-job-list></app-job-list>


	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	import JobList from './JobList.vue';
	import JobSearchBar from '../JobSearchBar/JobSearchBar.vue';
	export default {
		components: {
			appContentHeader: DefaultHeader,
			appJobList: JobList,
			appJobSearchBar: JobSearchBar
		}
	}
</script>

<style>
	.number-div {
		color:white;
		text-align: center;
		height: 20px;
		width: 50px;
		border-radius:10px;
		background: #003A98;
	}
	h1.jl-active-jobs {
		color: #003A98;
		padding-left: 5px;
	}
</style>

