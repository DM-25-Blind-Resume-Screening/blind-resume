<template>
	<div>
		<app-content-header>
			<h1 class="ri-h1">My Resume</h1>
		</app-content-header>
		<app-demographic-info></app-demographic-info>
		<app-experience-list></app-experience-list>
		<app-education-list></app-education-list>
		<app-skill-list></app-skill-list>
	</div>
</template>

<script>
	import DefaultHeader from '../../../Headers/DefaultHeader.vue';
	import DemographicInfo from './DemographicInfo.vue';
	import ExperienceList from './ResumeInfo/Experience/ExperienceList.vue'
	import EducationList from './ResumeInfo/Education/EducationList.vue'
	import SkillList from './ResumeInfo/Skills/SkillList.vue'
	export default {
		components: {
			appContentHeader: DefaultHeader,
			appDemographicInfo: DemographicInfo,
			appExperienceList: ExperienceList,
			appEducationList: EducationList,
			appSkillList: SkillList
		}
	}
</script>

<style>
.ri-h1 {
	font-size: 20px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 500;
	letter-spacing: 1px;
	margin-left: 20px;
}

</style>