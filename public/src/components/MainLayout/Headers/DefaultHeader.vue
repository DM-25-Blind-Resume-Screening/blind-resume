<template>
	<div class="content_header" style="background: linear-gradient(45deg, #2ED590, #1CB48B)">
		 <slot>
			 Default Header Content
		</slot>
		<img @click="goBack" class="arrow" src="../../../assets/left-arrow.svg" alt="back">
	</div>
</template>

<script>
export default {
	methods: {
		goBack() {
			this.$router.go(-1)
		}
	}
}
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
		box-shadow:  1px 3px 6px 1px rgba(0,0,0,0.3);
	}
	.arrow {
		position: fixed;
		right: 20px;
		top: 8px;
	}
</style>
