<template>
	<div class="di-container">
	<div class="user-image-div">
		<img class="user-image" src="../../../../../assets/landing-picture.jpg" />
	</div>
		<div class="di-content-container">
			<h1>Name Here</h1>
			<p>Location: {{ userLocation }}</p>
			<p>About Me: {{ userAboutMe }}</p>
		</div>
	</div>
</template>

<script>
export default {
	data() {
		return {
			userLocation: 'Provo, UT',
			userAboutMe: 'aksdjflkasjdfkajf'
		}
	}
}
</script>


<style>
  .user-image-div {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	margin-left: 100px;
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
	flex-direction: column;
	margin-left: 30px;
	margin-top: 40px;
	line-height: 30px;
}

</style>