<template>
	<div>
		<h1>Loading...</h1>
		<p>This page is loading..</p>
	</div>
</template>

<script>
	import axios from 'axios'
	export default {
		methods: {
			getCompanyInfo() {
				return axios.get(`/api/companyInfo`)
						.then(res => {
							this.$router.push(`/app/company/${res.data.id}`)
						})
						.catch(err => console.log(err))
			}
		},
		created() {
			this.getCompanyInfo()
		}
	}
</script>