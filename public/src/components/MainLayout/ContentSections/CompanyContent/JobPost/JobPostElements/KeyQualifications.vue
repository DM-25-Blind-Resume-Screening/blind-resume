<template>
	<div>
		<div class="jd-header">
			<h1 class="jd-h1">Key Qualifications</h1>
			<img class="jd-pencil" src="../../../../../../assets/pencil-edit-button.svg"/>
		</div>

		<div>
			 <quill-editor :options="editorOptions" v-model="internalKeyQualifications"></quill-editor> 
		</div>

	</div>
</template>

<script>

export default {
	data() {
		return {
			internalKeyQualifications: '',
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
		internalKeyQualifications() {
			this.$emit('input', this.internalKeyQualifications)
		}
	}
}
</script>