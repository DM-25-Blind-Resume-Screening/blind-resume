<template>
	<div>
		<app-content-header>
			<h1>1,274 Jobs Found</h1>
		</app-content-header>
		<h1>Job Listings</h1>
		<ul>
			<li>Job Post 1</li>
			<li>Job Post 2</li>
			<li>Job Post 3</li>
			<li>Job Post 4</li>
		</ul>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue'
	export default {
		components: {
			appContentHeader: DefaultHeader
		}
	}
</script>