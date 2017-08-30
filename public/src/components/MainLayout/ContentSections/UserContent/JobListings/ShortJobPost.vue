<template>
<div>
  <div class="job-listing">
        <div>
            <img width="90px" src="http://certifiedeurocollision.com/wp-content/uploads/2015/11/bmw-logo.png">
        </div>
    <div class="job-listing-content">
            <h1 class="sjp-h1">{{ positionTitle }}</h1>
            <h2 class="sjp-h2">{{ companyName }}</h2>
            <h3 class="sjp-h3">{{ location }}</h3>
            <p>{{ positionDescription }}</p>
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


.job-listing {
    display: flex;
    font-family: 'Avenir', Arial, Helvetica, sans-serif;
    width: 700px;
    height: auto;
    margin: 50px 100px;
}

.job-listing-content {
    margin-left: 10px;
}

.sjp-h1 {
    font-size: 20px;
    text-decoration: underline;
    margin: 0;
}

.sjp-h1:hover {
    color: #00BFE2;
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

p {
    margin-top: 6px;
}

</style>
