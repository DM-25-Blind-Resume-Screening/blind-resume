<template>
    <div>
        <div class="job-listing">
            <md-avatar class="md-large">
                <img :src="jobListing.logo_url" alt="People">
            </md-avatar>

            <div class="job-listing-content">
                <h1 @click="goToLongJobPost" class="sjp-h1">{{ jobListing.title }}</h1>
                <h2 class="sjp-h2">{{ jobListing.company }}</h2>
                <h3 class="sjp-h3">{{jobListing.location}}</h3>
                <p class="sjp-p">{{ jobListing.job_description }}</p>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['jobListing'],

    methods: {
        goToLongJobPost() {
            this.$router.push({path: `/app/user/${this.$route.params.user_id}/${this.jobListing.id}`})
        }
    }
}
</script>

<style>
.job-listing {
    display: flex;
    font-family: 'Avenir', Arial, Helvetica, sans-serif;
    width: 700px;
    margin: 50px 100px;
}

.job-listing-content {
    margin-left: 10px;
}

.sjp-h1 {
    font-size: 20px;
    text-decoration: underline;
    margin: 0;
    color: #323232;
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

.md-avatar {
    margin: 0;
}
</style>
