<template>
    <div>
        <div class="new-resume-header">
            <h1 class="new-resume-h1">Add New Experience</h1>
        </div>
        <div class="ei-container">
            <div class="ei-flex">
                <h2 class="ei-h2">Position Title</h2>
                <h2 class="ei-h2">Company</h2>
                <h2 class="ei-h2">From</h2>
                <h2 class="ei-h2">Description</h2>
            </div>
            <div class="ei-inputs-container">
                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter job title here</label>
                    <md-input v-model="newExperience.title"></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter company here</label>
                    <md-input v-model="newExperience.company"></md-input>
                </md-input-container>

            <div class="ei-date-inputs">
                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Start date</label>
                    <md-input v-model="newExperience.from_date"></md-input>
                </md-input-container>

                <md-input-container class="ei-end-date jd-input-job-title" md-inline>
                    <label>End Date</label>
                    <md-input v-model="newExperience.to_date"></md-input>
                </md-input-container>
            </div>

              <textarea v-model="newExperience.description" class="ei-textarea-desciption"></textarea> 

            <div class="add-exp-btn-container">
              <button class="resume-save-btn" @click="addNewExp">
                Save</button>
            </div>

            </div>
            

        </div>
    </div>
</template>

<script>
    export default {
        props: ['newExperience'],
        methods: {
            addNewExp() {
                this.$emit('addedExp');
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

</style>


