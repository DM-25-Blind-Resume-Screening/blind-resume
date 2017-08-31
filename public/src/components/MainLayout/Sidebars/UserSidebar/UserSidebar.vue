<template>
	<div>
		<app-user-image></app-user-image>
		<app-user-sidebar-industry></app-user-sidebar-industry>
		<app-user-sidebar-job-type></app-user-sidebar-job-type>
	</div>
</template>

<script>
import UserImage from './UserImage.vue';
import UserSidebarIndustry from './UserSidebarIndustry.vue';
import UserSidebarJobType from './UserSidebarJobType.vue';

export default {
  components: {
	  appUserImage: UserImage,
		appUserSidebarIndustry: UserSidebarIndustry,
		appUserSidebarJobType: UserSidebarJobType
  }
}
</script>
