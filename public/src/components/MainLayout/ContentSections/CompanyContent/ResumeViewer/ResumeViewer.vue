<template>
	<div>
		<app-resume-list></app-resume-list>
		<div class="rv-buttons">
			<button class="rv-pass-btn">Pass</button>
			<button class="rv-save-btn">Save</button>
		</div>
	</div>
</template>

<script>
import ResumeList from './ResumeList.vue'
export default {
	components: {
		appResumeList: ResumeList
	}
}
</script>

<style>
.rv-buttons {
	display: flex;
	width: 100%;
	justify-content: center;
	margin-top: 40px;
}

.rv-save-btn {
	width: 130px;
	height: 35px;
	outline: none;
	background: #2baf7a;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
	margin-left: 40%;
}

.rv-pass-btn {
	width: 130px;
	height: 35px;
	outline: none;
	background: #D55050;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
}
</style>