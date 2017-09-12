<template>
    <div>
        <div class="company-job-post">

           
            <md-avatar class="md-large">
                <img :src="job.logo_url" alt="People">
            </md-avatar>
            

            <div class="company-job-post-content">
                <h1 class="sjp-h1">{{ job.title }}</h1>
                <h2 class="sjp-h2">{{ job.company }}</h2>
                <h3 class="sjp-h3">{{ job.city }}, {{ job.state }}</h3>
                <p class="sjp-p">{{ job.job_description }}</p>
                <div class="scjp-review-container">
                    <p @click="goToApplications" style="{cursor: pointer}" class="sjp-p review-applicants">Total Applicants ({{job.applications_count}})</p>
                    <p @click="goToShortList" style="{cursor: pointer}" class="sjp-p  shortlist review-applicants">Shortlist ({{job.shortlist_count}})</p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
      props: ['job'],
      methods: {
        goToApplications() {
            this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.job.id}/resumes`})
        },
        goToShortList() {
            this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.job.id}/shortlist`})

        },
        goToInterviewCandidates() {
            this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.job.id}/candidates`})

        }
      }
    }
</script>


<style>
.md-avatar {
    margin: 0;
    margin-right: 20px;
}

.company-job-post {
    display: flex;
    font-family: 'Avenir', Arial, Helvetica, sans-serif;
    width: 700px;
    height: auto;
    margin: 50px 100px;
}

.company-job-post-content {
    margin-left: 10px;
}

.sjp-h1 {
    font-size: 20px;
    text-decoration: underline;
    margin: 0;
}

.sjp-h1:hover {
    color: #3f51b5;
    cursor: pointer;
}

.sjp-h2 {
    font-size: 17px;
    margin-top: 6px;
    margin-bottom: 0;
}

.sjp-h3 {
    font-size: 15px;
    margin-top: 6px;
    margin-bottom: 0px;
}

.sjp-p {
    margin-top: 6px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    max-width: 100ch;
}

.scjp-review-container {
    display: flex;
}

.review-applicants {
    color: #3f51b5;
    font-weight: 600;
}

.shortlist {
    margin-left: 30px;
}
</style>
