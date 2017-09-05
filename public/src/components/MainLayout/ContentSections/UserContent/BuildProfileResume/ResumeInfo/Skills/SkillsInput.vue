<template>
    <div>
        <div class="new-resume-header">
            <div class="new-resume-h1">Skills</div>
            <img class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
        </div>

    <div class="si-content-container">
        <md-chips type="text" v-model="userSkillsList" md-input-placeholder="E.g., Web Development, React etc." class="md-input-invalid si-input-skills">
            <span class="md-error">Enter up to 5 skills</span>
        </md-chips>
    </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            userSkillsList: []
        }
    },
    watch: {
        userSkillsLost() {
            this.$emit('input', this.userSkillsList)
        }
    }
}
</script>

<style>
.new-resume-header {
    height: 50px;
    background: linear-gradient(45deg, #3f51b5, #2e73b6);
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

.si-content-container {
    border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
    border-left: 1px solid #cccccc;
    display: flex;
    justify-content: center;
}

.si-input-skills {
    margin-bottom: 30px;
    width: 90%;
}
</style>


