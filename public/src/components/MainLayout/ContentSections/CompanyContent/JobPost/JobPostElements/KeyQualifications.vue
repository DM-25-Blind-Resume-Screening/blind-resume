<template>
    <div class="skills-section">
        <div class="new-resume-header">
            <div class="new-resume-h1">Key qualifications</div>
						<img class="new-resume-pencil jd-pencil" src="../../../../../../assets/pencil-edit-button.svg" />
        </div>
    	<div class="content-container">
        <!-- <md-chips type="text" v-model="jobResponsibilities" md-input-placeholder="Enter Job Responsibilities" class="md-input-invalid si-input-skills">
            <span class="md-error">Enter responsibilities</span>
        </md-chips> -->
				<div class="edit-div">
					<img class="edit-button" src="../../../../../../assets/edit.svg" />
					<img class="edit-button" src="../../../../../../assets/recycle-bin.svg" />
				</div>
				<md-input-container class="enter-input" md-inline>
            <label>Enter qualifications here</label>
            <md-input class="input-line"></md-input>
        </md-input-container>
		 	</div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            keyQualifications: []
        }
    },
    watch: {
        keyQualifications() {
            this.$emit('input', this.keyQualifications)
        }
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
		flex-direction: row;
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

</style>
