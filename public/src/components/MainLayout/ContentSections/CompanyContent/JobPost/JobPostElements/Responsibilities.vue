<template>
    <div class="skills-section">
        <div class="new-resume-header">
            <div class="new-resume-h1">Responsibilities</div>
						<img class="new-resume-pencil jd-pencil" src="../../../../../../assets/plus.svg" />
        </div>
				<ul>
					<li v-for="responsibility in jobResponsibilities">{{responsibility}}</li>
				</ul>
    	<div class="content-container">
				<div class="edit-div">
					<img class="edit-button" src="../../../../../../assets/edit.svg" />
					<img class="edit-button" src="../../../../../../assets/recycle-bin.svg" />
				</div>
				<md-input-container  class="enter-input" md-inline>
            <label>Enter responsibility here</label>
            <md-input v-model="newResponsibility" @keyup.enter.native="addNewResponsibility"></md-input>
        </md-input-container>
		 	</div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            jobResponsibilities: [],
						newResponsibility: ''
        }
    },
		methods: {
			addNewResponsibility(){
				this.jobResponsibilities.push(this.newResponsibility);
				this.newResponsibility= '';
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
