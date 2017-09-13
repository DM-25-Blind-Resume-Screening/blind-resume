<template>
    <div>
        <div class="new-resume-header">
            <h1 class="new-resume-h1">Add New Education</h1>
        </div>

        <div class="ei-container">
            <div class="ei-flex">
                <h2 class="ei-h2">School</h2>
                <h2 class="ei-h2">Degree</h2>
                <h2 class="ei-h2">Field of Study</h2>
                <h2 class="ei-h2">From</h2>
                <h2 class="ei-h2">Description</h2>
            </div>
            <div class="ei-inputs-container">
                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter school here</label>
                    <md-input v-model="newEducation.school"></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter degree here</label>
                    <md-input v-model="newEducation.degree"></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter field of study here</label>
                    <md-input v-model="newEducation.study_field"></md-input>
                </md-input-container>

                <div class="ei-date-inputs">
                    <md-input-container class="jd-input-job-title" md-inline>
                        <label>Start date</label>
                        <md-input v-model="newEducation.from_date"></md-input>
                    </md-input-container>

                    <md-input-container class="ei-end-date jd-input-job-title" md-inline>
                        <label>End Date</label>
                        <md-input v-model="newEducation.to_date"></md-input>
                    </md-input-container>
                </div>
            
                <textarea  v-model="newEducation.description" class="ei-textarea-desciption"></textarea>
            
                <div class="add-edu-btn-container">
                    <button class="exp-save-btn" @click="addNewEdu">
                        Save</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['newEducation'],
        methods: {
            addNewEdu() {
                this.$emit('addedEdu')
            }
        }
    }
</script>

<style>

.ei-h2 {
    font-size: 17px;
    margin-top: 30px;
    margin-bottom: 28px;
}
.ei-container {
    display: flex;
    border-right: 1px solid #cccccc;
    border-left: 1px solid #cccccc;
    border-bottom: 1px solid #cccccc;
    margin-bottom: 20px;
    padding-bottom: 20px;
    position: relative;
}

.ei-inputs-container {
    width: 50%;
	display: flex;
	flex-direction: column;
	margin-left: 30px;
	margin-top: 5px;
}

.ei-date-inputs {
    display: flex;
}

.ei-end-date.md-input-container {
    margin-left: 20px;
}

.add-exp-btn-container {
    margin-top: 40px;
}

.exp-save-btn {
    width: 110px;
    height: 30px;
    background: transparent;
    border: 1px solid #3f51b5;
    font-size: 15px;
    color: #3f51b5;
    position: absolute;
    bottom: 0;
    right: 10%;
    margin-bottom: 10px;
}

.exp-save-btn:hover {
    color: #fff;
    background: #3f51b5;
}
.new-resume-pencil {
    margin-right: 10px;
}
</style>


