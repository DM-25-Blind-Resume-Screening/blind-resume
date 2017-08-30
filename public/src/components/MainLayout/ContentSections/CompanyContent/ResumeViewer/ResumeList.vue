<template>
	<div>
		<app-blind-resume></app-blind-resume>
		<app-blind-resume></app-blind-resume>
		<app-blind-resume></app-blind-resume>
	</div>
</template>

<script>
	import BlindResume from './BlindResume.vue'
	export default {
		components: {
			appBlindResume: BlindResume
		}
	}
</script>