<template>
    <div>

        <div class="ui-profile-pic">
            <img width="110px" src="../../../../assets/head3.png">
        </div>
        <div class="ui-user-name">
            <p class="ui-p">{{ userName }}</p>
        </div>

    </div>
</template>

<script>
export default {
    data() {
        return {
            userName: 'Ashley Schuette'
        }
    }
}
</script>


<style>
.ui-profile-pic {
    text-align: center;
    margin-top: 30px;
    position: relative;
    z-index: 2;
}

.ui-user-name {
    text-align: center;
}

.ui-p {
    color: #000;
    position: relative;
    z-index: 5;
    font-size: 16px;
    margin-top: 5px;
}
</style>

