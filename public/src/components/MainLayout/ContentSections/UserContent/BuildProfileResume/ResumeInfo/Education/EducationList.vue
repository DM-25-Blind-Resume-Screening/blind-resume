<template>
	<div>
		<div class="new-resume-header">
			<h1 class="new-resume-h1">Education</h1>
			<img class="plus" src="../../../../../../../assets/plus.svg"/>
		</div>
		<div class="ei-content-container">
			<app-education-item
				v-for="itemInList in educationList"
				:key="itemInList.id"
				:propsEducationInfo="itemInList"
			></app-education-item>	
		</div>
	</div>
</template>

<script>
import EducationItem from './EducationItem.vue'
export default {
  props: ['educationList'],
  components: {
	  appEducationItem: EducationItem
  }
}
</script>
