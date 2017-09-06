<template>
	<div>
		<app-default-header>
			<h1>Current Job Postings</h1>
		</app-default-header>
		<app-short-company-job-post></app-short-company-job-post>
		<div class="add-btn">
			<md-button md-theme="add" class="md-fab md-fab-bottom-right md-primary">
				<md-icon>add</md-icon>
			</md-button>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';
import ShortCompanyJobPost from './ShortCompanyJobPost.vue';
export default {
	components: {
		appDefaultHeader: DefaultHeader,
		appShortCompanyJobPost: ShortCompanyJobPost
	}

}
</script>

<style>

.add-btn {
	position: fixed;
	right: 0;
	bottom: 0;
}
</style>

