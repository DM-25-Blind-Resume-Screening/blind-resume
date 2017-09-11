<template>
    <button @click="goToJobPost" class="jph-btn">{{jobPost.title}}</button>
</template>

<script>
    export default {
        props: ['jobPost'],
        methods: {
            goToJobPost() {
                this.$router.push({path: `/app/company/${this.$route.params.company_id}/${this.jobPost.id}`})
            }
        }
      
    }
</script>


<style>
.jph-h1 {
    font-size: 19px;
    font-weight: bold;
    color: #fff;
    margin: 80px 0 5px 20px;
}

.jph-btn {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 80%;
    display: block;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
    padding: 5px;
    margin-left: 20px;
}
</style>

