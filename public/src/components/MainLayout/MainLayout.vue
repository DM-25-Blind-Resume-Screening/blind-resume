<template>
	<div class="layout">
		<div v-if="isUserRoute" class="layout_sidebar">
			<router-view name="sidebar"></router-view>
		</div>
		<div v-else class="layout_sidebar_green">
			<router-view name="sidebar"></router-view>
		</div>
		<div class="layout_content">
			<router-view name="content"></router-view>
		</div>
	</div>
</template>

<script>

import {mapActions} from 'vuex';
export default {
	data(){
		return {
			isUserRoute: this.$route.path.includes("app/user"),
			route: this.$route
		}
	},
	watch: {
		'$route': 'getIndustries'
	},
		methods: {
			...mapActions(['getIndustries', 'getJobTypes'])
		},
		created() {
			console.log(this.$route.path)
			this.getIndustries();
			this.getJobTypes();
		}
	}


</script>

<style>
.layout {
	display: flex;
}

.layout_sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	width: 250px;
	background: linear-gradient(45deg, #87e2f2, #003A98);
	color: #fff;
	overflow: hidden;
}
.layout_sidebar_green {
	position: fixed;
	top: 0;
	bottom: 0;
	width: 250px;
	background: linear-gradient(45deg, #1CB48B, #2ED590);
	color: #fff;
	overflow: hidden;
}

.layout_sidebar a {
	text-decoration: none;
	color: #fff;
}

.layout_content {
	position: relative;
	margin-left: 250px;
	width: 100%;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	text-rendering: auto;
}
</style>
