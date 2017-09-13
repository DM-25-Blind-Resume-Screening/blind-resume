<template>
	<div class="di-container">
	<div class="user-image-div">
		<img class="user-image" src="../../../../../assets/landing-picture.jpg" />
	</div>
		<div class="di-content-container">
			<div class="onec-demo">
			<h1>Name Here</h1>
			<p>Location: {{ userLocation }}</p>
			<md-input-container class="jd-input-job-title" md-inline>
                    <label>e.g, City, State</label>
                    <md-input ></md-input>
                </md-input-container>

			<p>Phone: {{userPhone}}</p>
			<md-input-container class="jd-input-job-title" md-inline>
                    <label>e.g, 123-456-7891</label>
                    <md-input ></md-input>
                </md-input-container>

			<p>Email: {{userEmail}}</p>
			<md-input-container class="jd-input-job-title" md-inline>
                    <label>Email</label>
                    <md-input ></md-input>
                </md-input-container>
			</div>

		<div class="twoc-demo">
			<p>About Me:</p>
			<textarea class="about-textarea">{{ userAboutMe }}</textarea>

			<p>Portfolio:</p>
			<md-input-container class="jd-input-job-title" md-inline>
                    <label></label>
                    <md-input ></md-input>
            </md-input-container>

			<p>LinkedIn:</p>
			<md-input-container class="jd-input-job-title" md-inline>
                    <label></label>
                    <md-input ></md-input>
                </md-input-container>
		</div>

		</div>
	</div>
</template>

<script>
export default {
	data() {
		return {
			userLocation: 'Provo, UT',
			userPhone: '456-345-6789',
			userEmail: 'sdfdf@gmail.com',
			userAboutMe: 'aksdjflkasjdfkajf'
		}
	}
}
</script>


<style>
  .user-image-div {
	width: 190px;
	height: 150px;
	border-radius: 50%;
	margin-left: 80px;
	margin-top: 30px;
	overflow: hidden;
}  

.user-image {
	width: 150px !important;
	height: 150px !important;
	object-fit: cover;
}

.di-container {
	display: flex;
}

.di-content-container {
	display: flex;
	margin-left: 20px;
	margin-top: 40px;
	line-height: 30px;
	width: 100%;
}

.onec-demo {
	width: 45%;
}

.twoc-demo {
	width: 45%;
}

.about-textarea {
	width: 90%;
	height: 100px;
	outline: none;
	font-size: 14px;
	font-family: 'Avenir', Arial, Helvetica, sans-serif;
}

.about-textarea:focus {
	border: 2px solid #3f51b5;
}

</style>