<template>
    <div class="skills-section">
        <div class="jd-header">
            <div class="jd-h1">Qualifications</div>
			<img @click="addQualification = !addQualification" class="new-resume-pencil jd-pencil" src="../../../../../../assets/plus.svg" />
        </div>
    	<div class="content-container">
				<ul class="list-div">
					<app-qualification
						v-for="(qualification, index) in jobQualifications"
						key="index"
						:qualification="qualification"
						:index="index"
						@deleted="deleteQualification"
						v-model="jobQualifications[index]"></app-qualification>
				</ul>
				<div v-if="addQualification" class="input-div">
					<md-input-container  class="enter-input" md-inline>
	            <label>Enter qualification here</label>
	            <md-input v-model="newQualification" @keyup.enter.native="addNewQualification"></md-input>
	        </md-input-container>
				</div>
		 	</div>
    </div>
</template>

<script>
	import Qualification from './Qualification.vue'
	export default {
	    data() {
	        return {
	        	addQualification: false,
	            jobQualifications: [],
				newQualification: ''
	        }
	    },
		methods: {
			addNewQualification(){
				this.jobQualifications.push(this.newQualification.charAt(0).toUpperCase()+ this.newQualification.slice(1));
				this.newQualification= '';
				this.sendToParent()
			},
			deleteQualification(val) {
				this.jobQualifications.splice(val,1)
				this.sendToParent()
			},
			sendToParent() {
				this.$emit('updateQual', this.jobQualifications)
			}
		},
		components: {
			appQualification: Qualification
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
.edit-div{
	width: 11%;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: flex-end;
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
	display: flex;
}

</style>
