<template>
      <md-checkbox md-theme="about" class="md-primary sidebar_option" v-model="internalType"> 
        <span class="sidebar_option_text">
          {{jobtype.name}}
        </span>
      </md-checkbox>
</template>

<script>
	export default {
	  props: ['jobtype'],
	  data() {
	  	return {
	  		internalType: null
	  	}
	  },
	  watch: {
	  	internalType() {
	  		if(this.internalType) {
	  			this.$emit('typeAdded', this.jobtype.id)
	  		} else {
	  			this.$emit('typeDeleted', this.jobtype.id)
	  		}
	  	}
	  }
	}
</script>

<style>

.md-primary {
  margin-left: 20px;
}
</style>

