<template>
  <div>
      <app-short-job-post></app-short-job-post>
  </div>
</template>

<script>
import ShortJobPost from './ShortJobPost.vue';

export default {
	computed: {
		jobPostings() {
			return this.$store.state.jobPostings
		}
	},
	components: {
	  appShortJobPost: ShortJobPost
	}
}
</script>

