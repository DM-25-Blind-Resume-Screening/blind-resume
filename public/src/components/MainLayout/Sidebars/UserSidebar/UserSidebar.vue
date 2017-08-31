<template>
	<div>
		<app-user-image></app-user-image>
		<app-user-sidebar-industry></app-user-sidebar-industry>
	</div>
</template>

<script>
import UserImage from './UserImage.vue';
import UserSidebarIndustry from './UserSidebarIndustry.vue';

export default {
  components: {
	  appUserImage: UserImage,
	  appUserSidebarIndustry: UserSidebarIndustry
  }
}
</script>
