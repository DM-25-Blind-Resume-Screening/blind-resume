<template>
	<div class="selected-candidate">
		<div class="image-div">
			<div class="sc-image" :style="{ 'background-image': 'url(' + candidate.picture +')' }"></div>
		</div>
		<div class="text-div">
			<h1 class="candidates-name">Name: {{candidate.first_name}} {{candidate.last_name}}</h1>
			<div>Phone: {{candidate.phone}}</div>
			<div>Email: <a :href="'mailto:' + candidate.email">{{candidate.email}}</a></div>
			<div>LinkedIn: <a :href="candidate.linkedin_url">{{candidate.linkedin_url}}</a></div>
			<div>Portfolio: <a :href="candidate.portfolio_url">{{candidate.portfolio_url}}</a></div>
			<div class="about-me">Summary: {{candidate.about_me}}</div>
		</div>
	</div>
</template>

<script>
	export default {
		props: ['candidate']
	}
</script>

<style>
	.selected-candidate {
		display: flex;
		width: 100%;
		height:150px;
		margin: 40px;
		justify-content: center;
		align-items: center;
	}
	.image-div {
		display: flex;
		height: 100%;
		width: 150px;
		align-items: flex-start;
		justify-content: center;
	}

	.sc-image {
		width: 90px;
		height: 90px;
		border-radius: 50%;
		background: white;
		background-size: cover;
		background-position: center;
		box-shadow: 1px 1px 1px 1px rgba(0,0,0,0.5);
	}
	.text-div {
		display: flex;
		flex-direction: column;
		justify-content: flex-start;
		width:100%;
		height: 150px;
		margin-top: 50px 100px 30px 0px;
	}
	.about-me {
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		max-width: 100ch;
	}
</style>
