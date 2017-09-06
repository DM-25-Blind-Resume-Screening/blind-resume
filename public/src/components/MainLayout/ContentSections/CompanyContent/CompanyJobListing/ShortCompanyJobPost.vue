<template>
    <div>
        <div class="company-job-post">
            <!-- <div>
                        <img width="90px" src="http://certifiedeurocollision.com/wp-content/uploads/2015/11/bmw-logo.png">
                    </div>  -->
            <div class="company-job-post-content">
                <router-link to="/app/company/1/1">
                    <h1 class="sjp-h1">{{ positionTitle }}</h1>
                </router-link>
                <h2 class="sjp-h2">{{ companyName }}</h2>
                <h3 class="sjp-h3">{{ location }}</h3>
                <p class="sjp-p">{{ positionDescription }}</p>
                <div class="scjp-review-container">
                    <router-link to="/app/company/1/1/resumes">
                        <p class="sjp-p review-applicants">Review Applicants (30)</p>
                    </router-link>
                    <router-link to="/app/company/1/1/resumes">
                        <p class="sjp-p  shortlist review-applicants">Review Shortlist (2)</p>
                    </router-link>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            companyLogo: 'http://certifiedeurocollision.com/wp-content/uploads/2015/11/bmw-logo.png',
            positionTitle: 'Senior Front End Developer',
            companyName: 'BMW',
            location: 'Seattle, WA',
            positionDescription: 'Searching for a talented senior front end developer to join our team. The devloper will not only be responsible for defining strategies for front end technologies, including…'
        }
    }
}
</script>


<style>
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
    outline: none;
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

