<template>
	<div>
		<app-company-logo></app-company-logo>
		<app-job-post-history></app-job-post-history>
	</div>
</template>

<script>
import CompanyLogo from './CompanyLogo.vue';
import JobPostHistory from './JobPostHistory.vue';

export default {
	components: {
		appCompanyLogo: CompanyLogo,
		appJobPostHistory: JobPostHistory
	}

}
</script>


<style>


</style>
