<template>
	<div class="layout">

		<div class="layout_sidebar">
			<div class="weird-box"></div>
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


.weird-box {
	width: 250px;
	height: 350px;
	background: white;
	box-shadow: 2px 2px 50px 4px rgba(0,0,0,0.7);
	position: absolute;
	z-index: 1;
	margin-top: -175px;

	transform: rotate(45deg);
}

.layout_sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	width: 250px;
	background: linear-gradient(45deg, #87e2f2, #003A98);
	color: #fff;
	overflow: hidden;
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
