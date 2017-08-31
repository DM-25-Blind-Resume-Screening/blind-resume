<template>
	<div>
		<quill-editor class="nj-editor" v-model="internalResponsibilities"></quill-editor>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				internalResponsibilities: ''
			}
		},
		watch: {
			internalResponsibilities() {
				this.$emit('input', this.internalResponsibilities)
			}
		}
	}
</script>