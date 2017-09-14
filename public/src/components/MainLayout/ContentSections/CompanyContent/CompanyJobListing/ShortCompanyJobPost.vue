<template>
    <div class="shortpost-wrapper">
        <div class="company-job-post">
            <md-avatar class="md-large">
                <img :src="job.picture" alt="Company Logo">
            </md-avatar>
            <div class="company-job-post-content">
                <h1 @click="goToLongJobpost" class="sjp-h1">{{ job.title }}</h1>
                <h2 class="sjp-h2">{{ job.company }}</h2>
                <h3 class="sjp-h3">{{ job.city }}, {{ job.state }}</h3>
                <p class="sjp-p">{{ job.job_description }}</p>
                <div class="scjp-review-container">
                    <p @click="goToApplications" class="sjp-p review-applicants">Total Applicants ({{job.applications_count}})</p>
                    <p @click="goToShortList" class="sjp-p  shortlist review-applicants">Shortlist ({{job.shortlist_count}})</p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
      props: ['job'],
      methods: {
        goToLongJobpost() {
          this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.job.id}`})
        },
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
.shortpost-wrapper {
  width: 100%;
  height: 100%;
}
.md-avatar {
    margin: 20px 10px 30px 30px;
}

.company-job-post {
    width: 100%;
    height: 100%;
    margin-top: 20px;
    display: flex;
    align-items: flex-start;
    font-family: 'Avenir', Arial, Helvetica, sans-serif;
    height: auto;
}

.company-job-post-content {
    margin: 20px 0px 20px 20px;
    width: 100%;
}

.sjp-h1 {
    font-size: 20px;
    height:30px;
    text-decoration: none;
    border-bottom: 1px solid #2ED590;
    margin: 0;
}

.sjp-h1:hover {
    color: #1CB48B;
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
    color: #2ED590;
    font-weight: 600;
    cursor: pointer;
}

.shortlist {
    margin-left: 30px;
}
</style>
