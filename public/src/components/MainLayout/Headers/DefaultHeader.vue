<template>
	<div class="">
		<div v-if="isUserRoute" class="content_header">
			<img @click="goBack" class="arrow" src="../../../assets/left-arrow.svg" alt="back">
			<slot>
				 Default Header Content
			</slot>
		<div class="sign-out">
			<a href="http://localhost:3000/auth/logout">
				<button type="button" class="logout-button">Logout</button>
			</a>
		</div>
		</div>
		<div v-else class="content_header_green">
			<img @click="goBack" class="arrow" src="../../../assets/left-arrow.svg" alt="back">
			<slot>
				 Default Header Content
			</slot>
		<div class="sign-out">
			<a href="http://localhost:3000/auth/logout">
				<button type="button" class="logout-button">Logout</button>
			</a>
		</div>
		</div>
		<div class="header-div">
		</div>
	</div>

</template>

<script>
export default {
	data(){
			return {
				isUserRoute: this.$route.path.includes("app/user")
			}
	},
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
		justify-content: space-between;
		width: 100%;
		height: 52px;
		padding-left: 25px;
		padding-right: 265px;
		color: white;
		font-size: 18px;
		background: linear-gradient(45deg,#003A98,#3f89c2);
		box-shadow:  1px 3px 6px 1px rgba(0,0,0,0.3);
		position: fixed;
		z-index: 50;
	}
	.content_header_green {
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: 10px 5px;
		width: 100%;
		height: 52px;
		padding-left: 25px;
		padding-right: 265px;
		color: white;
		font-size: 18px;
		background: linear-gradient(45deg, #2ED590 , #1CB48B );
		box-shadow:  1px 3px 6px 1px rgba(0,0,0,0.3);
		position: fixed;
		z-index: 50;
	}

	.header-div {
		height: 52px;
		width: 100%;
	}
	.logout-button {
		height: 30px;
		width: 80px;
		background: none;
		border: solid 1px white;
		color: white;
		font-size: 15px;
		box-shadow: 0 0 2px 1px rgba(255, 255, 255, 0.2);
	}

</style>
