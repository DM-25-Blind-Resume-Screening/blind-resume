<template>

    <md-checkbox md-theme="about" class="md-primary sidebar_option" v-model="internalIndustry">
        <span class="sidebar_option_text">
            {{ industry.name }}    
        </span>
    </md-checkbox>
</template>

<script>


export default {
    props: ['industry'],
    data() {
    	return {
    		internalIndustry: null
    	}
    },
    watch: {
    	internalIndustry() {
    		if(this.internalIndustry) {
    			this.$emit('industryAdded', this.industry.id)
    		} else {
    			this.$emit('industryDeleted', this.industry.id)
    		}
    	}
    }
}
</script>

<style>

    
</style>




