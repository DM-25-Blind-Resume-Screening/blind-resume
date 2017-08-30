<template>
	<div>
		<h1>Oops, something went wrong</h1>
		<button @click="backToHome">Back to Home</button>
	</div>
</template>

<script>
	export default {
		methods: {
			backToHome() {
				this.$router.push('/')
			}
		}
	}
</script>