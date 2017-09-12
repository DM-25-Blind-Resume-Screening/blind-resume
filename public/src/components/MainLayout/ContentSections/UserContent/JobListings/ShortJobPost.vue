<template>
<div>
  <div class="job-listing">
        <div class="listing_logo">
            <img :src="jobListing.logo_url">
        </div>
    <div class="job-listing-content">
            <h1 class="sjp-h1">{{ jobListing.title }}</h1>
            <h2 class="sjp-h2">{{ jobListing.company }}</h2>
            <h3 class="sjp-h3">{{jobListing.city}}, {{ jobListing.state }}</h3>
            <p class="sjp-p">{{ jobListing.job_description }}</p>
    </div>
  </div>
</div>
</template>

<script>
    export default {
        props: ['jobListing']
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

.listing_logo {
    width: 100px !important;
    height: 100px;
}

/*.listing_logo img {
    width: 100%;
    height: 100%;
}*/

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
}

</style>
