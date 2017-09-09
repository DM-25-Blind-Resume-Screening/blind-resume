<template>
	<div >
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Experience</h1>
			<img class="plus" src="../../../../../../../assets/plus.svg"/>
		</div>
		<div class="el-padding-top"></div>
		<div class="el-content-container">
			<app-experience-item v-for="experienceItem in experienceList" :key="experienceItem.id" :propExperience="experienceItem">
			</app-experience-item>
		</div>
	</div>
</template>

<script>
import ExperienceItem from './ExperienceItem.vue'
export default {
	props: ['experienceList'],

	components: {
		appExperienceItem: ExperienceItem
	}
}
</script>

<style>

.plus {
	margin-right: 10px;
}

.el-content-container {
	border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.el-padding-top {
	padding: 10px;
	border-right: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
}

</style>

