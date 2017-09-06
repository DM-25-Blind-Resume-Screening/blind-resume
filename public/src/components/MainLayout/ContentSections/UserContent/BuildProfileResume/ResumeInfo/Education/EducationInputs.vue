<template>
    <div>
        <div class="new-resume-header">
            <h1 class="new-resume-h1">Education</h1>
        </div>

        <div class="ei-content-container">
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
                    <md-input></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter degree here</label>
                    <md-input></md-input>
                </md-input-container>

                <md-input-container class="jd-input-job-title" md-inline>
                    <label>Enter field of study here</label>
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
    </div>
</template>

<script>
export default {
 
}
</script>

<style>
.new-resume-pencil {
    margin-right: 10px;
}
</style>


