<template>
    <div>
        <div class="new-resume-header">
            <h1 class="new-resume-h1">Experience</h1>
            <img class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
        </div>
        <div class="ei-content-container">
            <div class="ei-flex">
                <h2 class="ei-h2">Position Title</h2>
                <h2 class="ei-h2">Company</h2>
                <h2 class="ei-h2">From</h2>
                <h2 class="ei-h2">Description</h2>
            </div>
            <div class="ei-inputs-container">
                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter job title here</label>
                    <md-input></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter company here</label>
                    <md-input></md-input>
                </md-input-container>

            <div class="ei-date-inputs">
                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Start date</label>
                    <md-input></md-input>
                </md-input-container>

                <md-input-container class="ei-end-date jd-input-job-title" md-inline>
                    <label>End Date</label>
                    <md-input></md-input>
                </md-input-container>
            </div>

              <textarea class="ei-textarea-desciption"></textarea> 

            </div>
        </div>
        <div>
            <quill-editor :options="editorOptions" v-model="userExperience"></quill-editor>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            userExperience: '',
            editorOptions: {
                modules: {
                    toolbar: [
                        ['bold', 'italic', 'underline'],
                        [{ 'header': 1 }, { 'header': 2 }],
                        [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                        [{ 'align': [] }]
                    ],
                    history: {
                        delay: 1000,
                        maxStack: 50,
                        userOnly: false
                    }
                }
            }
        }
    }
}
</script>

<style>

.ei-h2 {
    font-size: 17px;
	margin-top: 30px;
}
.ei-content-container {
    border-right: 1px solid #cccccc;
    border-bottom: 1px solid #cccccc;
    border-left: 1px solid #cccccc;
    display: flex;
}

.ei-flex {
    display: flex;
    flex-direction: column;
    margin-left: 30px;
}

.ei-inputs-container {
    width: 50%;
	display: flex;
	flex-direction: column;
	margin-left: 30px;
	margin-top: 5px;
}

.ei-textarea-desciption {
    width: 100%;
	margin: 35px 0;
	height: 150px;
	 outline: #3f51b5; 
	font-size: 14px;
}

.ei-date-inputs {
    display: flex;
}

.ei-end-date.md-input-container {
    margin-left: 20px;
}

.md-input-container {
	margin: 0;
}
</style>


