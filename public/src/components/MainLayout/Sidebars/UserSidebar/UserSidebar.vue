<template>
	<div>
		<app-user-image></app-user-image>
		<h1 class="usi-h1">Job Industry</h1>
    	<div class="checkbox-container-industry">
			<app-user-sidebar-industry
				v-for="industry in industries"
				:key="industry.id"
				:industry="industry"
			>
				
			</app-user-sidebar-industry>
		</div>
		<h1 class="usjt-h1">Job Type</h1>
    	<div class="checkbox-container-job-type">
			<app-user-sidebar-job-type 
				v-for="jobtype in jobTypes"
				:jobtype="jobtype"
				:key="jobtype.id">
					
			</app-user-sidebar-job-type>
		</div>
	</div>
</template>

<script>
import UserImage from './UserImage.vue';
import UserSidebarIndustry from './UserSidebarIndustry.vue';
import UserSidebarJobType from './UserSidebarJobType.vue';
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

<style>
	.usjt-h1 {
	  font-size: 19px;
	  font-weight: bold;
	  color: #fff;
	  margin: 80px 0 5px 20px;
	}

	.usi-h1 {
        font-size: 19px;
        font-weight: bold;
        color: #fff;
        margin: 80px 0 5px 20px;
    }

    .checkbox-container-industry {
        background: #2062ae;
        width: 90%;
        height: 250px;
        display: flex;
        flex-direction: column;
        overflow-y: scroll;
        overflow-x: hidden;
    }

	.checkbox-container-job-type {
	  background: #3b83bf;
	  width: 90%;
	  height: 150px;
	  overflow-y: scroll;
	  display: flex;
	  flex-direction: column;
	}	

	.sidebar_option {
		display: flex;
  		align-items: center;
  		text-overflow: ellipsis;
  		white-space: nowrap;
  		width: 85%;
	}

	.sidebar_option .md-checkbox-label {
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis
	}
</style>
