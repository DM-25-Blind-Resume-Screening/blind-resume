<template>
	<div>
		<h1>Resume Viewer</h1>
		<app-resume-list></app-resume-list>
		<div class="rv-buttons">
			<button>Save</button><button>Pass</button>
		</div>
	</div>
</template>

<script>
	import ResumeList from './ResumeList.vue'
	export default {
		components: {
			appResumeList: ResumeList
		}
	}
</script>

<style>
	.rv-buttons {
		display: flex;
	}
</style>