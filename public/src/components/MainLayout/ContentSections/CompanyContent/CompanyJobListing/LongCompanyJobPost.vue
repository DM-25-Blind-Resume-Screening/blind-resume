<template>
	<div>
		<app-content-header>
			<h1>Job Post Info</h1>
		</app-content-header>
		<div class="company-info-section">
			<div>
				<img width="120px" src="http://certifiedeurocollision.com/wp-content/uploads/2015/11/bmw-logo.png">
			</div>
			<div class="company-info-content">
				<h1 class="ljp-h1">Company Info</h1>
				<p class="ljp-p"> Stuff about company</p>
			</div>
		</div>

		<div class="ljp-job-info-section">
			<h2 class="ljp-h2">Senior Front End Devloper</h2>
			<div class="ljp-job-info-content">
				<h3 class="ljp-h3">Job Description</h3>
				<p class="ljp-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti quia cumque consequatur voluptates necessitatibus? Odio vitae animi ipsam saepe, totam. Sequi voluptate beatae nihil nostrum. Molestiae quas veniam incidunt eum.</p>
				<h3 class="ljp-h3">Responsibilities</h3>
				<p class="ljp-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro veniam sequi sint iure architecto omnis, incidunt natus est temporibus quibusdam! Doloribus magnam vero suscipit quam provident consequuntur, nam totam cumque?</p>
				<h3 class="ljp-h3">Key Qualifications</h3>
				<p class="ljp-p">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro veniam sequi sint iure architecto omnis, incidunt natus est temporibus quibusdam! Doloribus magnam vero suscipit quam provident consequuntur, nam totam cumque?</p>
			</div>
			<div class="ljp-btns-container">
				<router-link to="/app/company/1/newJob">
					<button class="ljp-apply-btn">Edit post</button>
				</router-link>
			</div>
		</div>
	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue';

export default {
	components: {
		appContentHeader: DefaultHeader
	}
}
</script>

<style>
.company-info-section {
	display: flex;
	margin: 60px 60px;
}

.company-info-content {
	margin-left: 60px;
}

.ljp-job-info-section {
	margin-left: 60px;
	width: 880px;
}

.ljp-job-info-content {
	width: 880px;
}

.ljp-h1 {
	font-size: 20px;
	width: 700px;
	border-bottom: 1.5px solid #313131;
}

.ljp-h2 {
	font-size: 17px;
	width: 880px;
	border-bottom: 1.5px solid #313131;
}

.ljp-h3 {
	font-size: 15px;
	font-weight: 600;
	margin-top: 10px;
}

.ljp-p {
	margin-top: 10px;
}

.ljp-btns-container {
	display: flex;
	justify-content: flex-end;
	margin-top: 40px;
}

.ljp-apply-btn {
	width: 110px;
	height: 30px;
	font-family: 'Avenir' Arial, Helvetica, sans-serif;
	color: #fff;
	font-size: 15px;
	background: #3b83bf;
	outline: none;
	border: none;
}

.ljp-apply-btn:hover {
	cursor: pointer;
}
</style>
