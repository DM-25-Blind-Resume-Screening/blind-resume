<template>
	<div class="selected-candidate">
		<div class="image-div">
			<div class="sc-image"></div>
		</div>
		<div class="text-div">
			<h1>Name</h1>
			<div>LinkedIn: <a href="#">linkedin.com/in/username</a></div>
			<div>Portfolio: <a href="#">portfoliosite.com</a></div>
			<div>RESUME INFO</div>
		</div>
	</div>
</template>

<script>

</script>

<style>
	.selected-candidate {
		display: flex;
		width: 100%;
		height:120px;
		margin : 20px;
		justify-content: center;
		align-items: center;
	}
	.image-div {
		display: flex;
		height: 100%;
		width: 200px;
		align-items: center;
		justify-content: center;
	}

	.sc-image {
		width: 90px;
		height: 90px;
		border-radius: 50%;
		background: white;
		box-shadow: 2px 2px 10px black;
	}
	.text-div {
		display: flex;
		flex-direction: column;
		justify-content: center;
		width:100%;
		height: 120px;
	}
</style>
