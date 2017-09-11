<template>
	<div class="responsibility_item">
		<div class="edit-div">
			<img @click="editQualification = !editQualification" class="edit-button" src="../../../../../../assets/edit.svg" />
			<img @click="deleteQualification" class="edit-button" src="../../../../../../assets/recycle-bin.svg" />
		</div>
		<span v-if="!editQualification">
			{{qualification}}
		</span>
		<md-input-container v-else class="enter-input" md-inline>
        	<md-input v-model="internalQualification" @keyup.enter.native="editQualification = false"></md-input>
    	</md-input-container>
	</div>
</template>

<script>
	export default {
		props: ['index', 'qualification'],
		data() {
			return {
				editQualification: false,
				internalQualification: ''
			}
		},
		watch: {
			internalQualification() {
				this.$emit('input', this.internalQualification)
			}
		},
		methods: {
			deleteQualification() {
				this.$emit('deleted', this.index)
			}
		},
		created() {
			this.internalQualification = this.qualification
		}
	}
</script>

<style>
	.responsibility_item {
		display: flex;
		align-items: center;
		margin-right: 15px;
	}

	.edit-div{
		width: 11%;
		height: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
</style>