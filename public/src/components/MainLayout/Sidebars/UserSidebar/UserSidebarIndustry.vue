<template>

    <md-checkbox md-theme="about" class="md-primary sidebar_option">
        <span class="sidebar_option_text">
            {{ industry.name }}    
        </span>
    </md-checkbox>
</template>

<script>


export default {
    props: ['industry']
}
</script>




