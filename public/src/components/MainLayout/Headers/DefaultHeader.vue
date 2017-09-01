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
		height: 52px;
		display: flex;
		align-items: center;
		padding-left: 30px;
		color: white;
		font-size: 18px;
		background: linear-gradient(45deg,#003A98,#3f89c2);
		box-shadow:  3px 3px 6px 1px rgba(0,0,0,0.3);
	}
</style>
