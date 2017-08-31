<template>
	<div class="layout">
		<div class="layout_sidebar">
			<router-view name="sidebar"></router-view>
		</div>
		<div class="layout_content">
			<router-view name="content"></router-view>
		</div>
	</div>
</template>

<script>
	
</script>

<style>
	.layout {
		display: flex;
	}

	.layout_sidebar {
		position: fixed;
		top: 0;
		bottom: 0;
		z-index: 999;
		width: 250px;
		background: linear-gradient(to bottom, #34aebe, #23809b);
		color: #fff;
	}

	.layout_sidebar a {
		text-decoration: none;
		color: #fff;
	}

	.layout_content {
		position: relative;
		margin-left: 250px;
		width: 100%;
    	letter-spacing: normal;
    	word-spacing: normal;
    	vertical-align: top;
    	text-rendering: auto;
	}

</style>