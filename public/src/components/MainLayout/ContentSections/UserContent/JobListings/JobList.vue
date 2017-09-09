<template>
  <div>
      <app-short-job-post
				v-for="jobListing in allJobPostings"
				:key="jobListing.id"
				:jobListing="jobListing">
			</app-short-job-post>
  </div>
</template>

<script>
import ShortJobPost from './ShortJobPost.vue';

export default {
	props: ['allJobPostings'],
	
	components: {
	  appShortJobPost: ShortJobPost
	}
}
</script>

