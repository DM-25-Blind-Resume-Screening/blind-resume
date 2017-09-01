<template>
	<div>
		<div class="jd-header">
			<h1 class="jd-h1">Responsibilities</h1>
			<img class="jd-pencil" src="../../../../../../assets/pencil-edit-button.svg"/>
		</div>

		<div>
			 <quill-editor :options="editorOptions" v-model="internalResponsibilities"></quill-editor> 
		</div>

	</div>
</template>

<script>

export default {
	data() {
		return {
			internalResponsibilities: '',
			editorOptions: {
				modules: {
					toolbar: [
					['bold', 'italic', 'underline'],
					[{ 'header': 1 }, { 'header': 2 }],
					[{ 'list': 'ordered'}, { 'list': 'bullet' }],
					[{ 'align': [] }]
					],
					history: {
					delay: 1000,
					maxStack: 50,
					userOnly: false
					}
				}
			}
		}
	},
	watch: {
		internalResponsibilities() {
			this.$emit('input', this.internalResponsibilities)
		}
	}
}
</script>