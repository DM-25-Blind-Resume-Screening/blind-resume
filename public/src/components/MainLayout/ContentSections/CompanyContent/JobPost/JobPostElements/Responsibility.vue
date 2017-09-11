<template>
	<div class="responsibility_item">
		<div class="edit-div">
			<img @click="editResponsibility = !editResponsibility" class="edit-button" src="../../../../../../assets/edit.svg" />
			<img @click="deleteResponsibility" class="edit-button" src="../../../../../../assets/recycle-bin.svg" />
		</div>
		<span v-if="!editResponsibility">
			{{responsibility}}
		</span>
		<md-input-container v-else class="enter-input" md-inline>
        	<md-input v-model="internalResponsibility" @keyup.enter.native="editResponsibility = false"></md-input>
    	</md-input-container>
	</div>
</template>

<script>
	export default {
		props: ['index', 'responsibility'],
		data() {
			return {
				editResponsibility: false,
				internalResponsibility: ''
			}
		},
		watch: {
			internalResponsibility() {
				this.$emit('input', this.internalResponsibility)
			}
		},
		methods: {
			deleteResponsibility() {
				this.$emit('deleted', this.index)
			}
		},
		created() {
			this.internalResponsibility = this.responsibility
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