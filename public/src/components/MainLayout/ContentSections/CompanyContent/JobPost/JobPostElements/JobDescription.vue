<template>
	<div>
		<quill-editor class="nj-editor" v-model="internalJobDescription"></quill-editor>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				internalJobDescription: ''
			}
		},
		watch: {
			internalJobDescription() {
				this.$emit('input', this.internalJobDescription)
			}
		}
	}
</script>