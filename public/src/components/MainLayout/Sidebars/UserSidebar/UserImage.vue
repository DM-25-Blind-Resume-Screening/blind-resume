<template>
    <div>
        <div class="ui-profile-pic" v-if="!displayUserInfo" :style="{'background-image': 'url(https://www.drupal.org/files/issues/default-avatar.png)'}"></div>
        <div class="ui-profile-pic" v-else :style="{'background-image': 'url(' + displayUserInfo.picture + ')'}">
        </div>

        <div class="ui-user-name" v-if="!displayUserInfo">Loading...</div>
        <div class="ui-user-name" v-else>
            <p class="ui-p">{{displayUserInfo.first_name}} {{displayUserInfo.last_name}}</p>
        </div>
        
    </div>
</template>

<script>
import {mapGetters, mapActions} from 'vuex'
export default {
    computed: {
        ...mapGetters(['displayUserInfo'])
    },
    methods: {
        ...mapActions(['getUserInfo'])
    },
    created() {
        this.getUserInfo(this.$route.params.user_id)
    }
}
</script>


<style>
.ui-profile-pic {
    text-align: center;
    height: 110px;
    width: 100px;
    background-size: cover;
    background-position: center;
    border-radius: 50%;
    margin: 10px auto;
    position: relative;
    z-index: 2;
}

.ui-user-name {
    text-align: center;
}

.ui-p {
    color: #fff;
    position: relative;
    z-index: 5;
    font-size: 16px;
    margin-top: 10px;
}
</style>

