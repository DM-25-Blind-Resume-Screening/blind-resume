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
import axios from 'axios';
import {mapActions} from 'vuex';

export default {
	computed: {
		industries() {
			return this.$store.state.industries
		},
		jobTypes() {
			return this.$store.state.jobTypes
		}
	},
	components: {
	  appUserImage: UserImage,
		appUserSidebarIndustry: UserSidebarIndustry,
		appUserSidebarJobType: UserSidebarJobType
	},
	methods: {
		...mapActions(['getIndustries', 'getJobTypes'])
	},
	created() {
		this.getIndustries();
		this.getJobTypes();
	}
}
</script>
