<template>
	<div class="content_header">
		<slot>
			Default Header Content
		</slot>
	</div>
</template>

<script>
	
</script>

<style>
	.content_header {
		display: flex;
		align-items: center;
		padding: 10px 5px;
		width: 100%;
		height: 50px;
		display: flex;
		background: #99a5b6;

		font-size: 20px;
		color: #fff;
		text-transform: uppercase;
		font-weight: 500;
		letter-spacing: 1px;
		padding-left: 20px;
	}
</style>