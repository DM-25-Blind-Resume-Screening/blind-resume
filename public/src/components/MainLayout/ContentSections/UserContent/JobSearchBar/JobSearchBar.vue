<template>
    <div class="jsb-search-container">
        <input class="jsb-input" type="text" placeholder="Enter a company or keyword">
        <input class="jsb-input jsb-location" type="text" placeholder="Enter a location">
        <div class="jsb-search-icon">
        <img  src="../../../../../assets/searchblue.svg">
        </div>
  </div>
</template>

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
        color: #00BFE2;
        font-family: 'Avenir', Arial, Helvetica, sans-serif;
        font-weight: bold;
        padding-left: 5px;

    }

    .jsb-input::placeholder {
        color: #00BFE2;
        font-family: 'Avenir', Arial, Helvetica, sans-serif;
        font-size: 15px;
        font-weight: bold;
        padding-left: 5px;
        
    }

    .jsb-location {
        margin-left: 10px;
    }

    .jsb-search-icon {
        margin-left: 10px;
    }

</style>



