<template>
    <div class="jsb-search-container">
        <input class="jsb-input" type="text" placeholder="Enter a keyword" v-model="searchKeyword">
        <input class="jsb-input jsb-location" type="text" placeholder="Enter a location" v-model="searchLocation">
<!--         <div class="jsb-search-icon" @click="confirmSearch">
        <img  src="../../../../../assets/searchblue.svg">
        </div> -->
  </div>
</template>

<script>
    import {EventBus} from '../../../../../main.js'
    export default {
        data() {
            return {
                searchKeyword: '',
                searchLocation: ''
            }
        },
        watch: {
            searchKeyword() {
                EventBus.$emit('searchKeyword', this.searchKeyword);
            },
            searchLocation() {
                EventBus.$emit('searchLocation', this.searchLocation);
            }
        }
    }
</script>

<style>

    .jsb-search-container {
        margin: 30px 0px 30px 50px;
        display: flex;
    }

    .jsb-input {
        width: 250px;
        height: 30px;
        border: 1px solid #95989A;
        outline: none;
        font-size: 15px;
        color: black;
        font-family: 'Avenir', Arial, Helvetica, sans-serif;
        padding-left: 5px;
    }

    .jsb-input::placeholder {
        color: #6fc4e2;
        font-family: 'Avenir', Arial, Helvetica, sans-serif;
        font-size: 15px;
        padding-left: 5px;
    }

    .jsb-location {
        margin-left: 10px;
    }

    .jsb-search-icon {
        margin-left: 10px;
    }

</style>



