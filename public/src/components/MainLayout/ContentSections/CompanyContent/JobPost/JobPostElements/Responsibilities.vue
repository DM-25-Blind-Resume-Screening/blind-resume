<template>
    <div class="skills-section">
        <div class="jd-header">
            <div class="jd-h1">Responsibilities</div>
				<img @click="addResponsibility = !addResponsibility" class="new-resume-pencil jd-pencil" src="../../../../../../assets/plus.svg" />
        </div>
    	<div class="content-container">
				<ul class="list-div">
					<app-responsibility 
						v-for="(responsibility, index) in jobResponsibilities" 
						key="index" 
						:responsibility="responsibility" 
						:index="index"
						@deleted="deleteResponsibility"
						v-model="jobResponsibilities[index]"></app-responsibility>
				</ul>
				<div v-if="addResponsibility" class="input-div">
					<md-input-container  class="enter-input" md-inline>
		            	<label>Enter responsibility here</label>
		            	<md-input v-model="newResponsibility" @keyup.enter.native="addNewResponsibility"></md-input>
		        	</md-input-container>
				</div>
		 </div>
    </div>
</template>
<script>
	import Responsibility from './Responsibility.vue'
	export default {
	    data() {
	        return {
	        	addResponsibility: false,
	            jobResponsibilities: [],
				newResponsibility: ''
	        }
	    },
		methods: {
			addNewResponsibility(){
				this.jobResponsibilities.push(this.newResponsibility.charAt(0).toUpperCase()+ this.newResponsibility.slice(1));
				this.newResponsibility= '';
				this.sendToParent()
			},
			deleteResponsibility(val) {
				this.jobResponsibilities.splice(val,1)
				this.sendToParent()
			},
			sendToParent() {
				this.$emit('updateResp', this.jobResponsibilities)
			}
		},
		components: {
			appResponsibility: Responsibility
		}
	}
</script>
<style>
	.skills-section {
	    margin-top: 20px;
	}
	.new-resume-header {
	    height: 50px;
	    background: linear-gradient(45deg, #1CB48B, #2ED590);
	    border-top-left-radius: 5px;
	    border-top-right-radius: 5px;
	    display: flex;
	    justify-content: space-between;
	}
	.new-resume-h1 {
	    font-size: 22px;
	    color: #fff;
	    margin-left: 30px;
	    display: flex;
	    justify-content: center;
	    flex-direction: column;
	    height: 100%;
	}
	.content-container {
			width:100%;
			height: 100%;
	    	border-right: 1px solid #cccccc;
	    	border-bottom: 1px solid #cccccc;
	   		border-left: 1px solid #cccccc;
	    	display: flex;
			flex-direction: column !important;
			padding-bottom: 20px;
	}

	.enter-input {
		width: 85%;
		height: 50px;
	}
	.list-div {
		width: 90%;
		display: flex;
		flex-direction: column;
		padding-left: 27px;
		padding-top: 15px;
	}

	.input-div {
		margin-left: 20px;
	}


</style>
