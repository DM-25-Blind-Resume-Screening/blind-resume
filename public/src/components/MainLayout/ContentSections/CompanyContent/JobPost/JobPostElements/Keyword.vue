<template>
	<div class="keyword">
		{{keyword.keyword}} - <button @click="$emit('remove')">Remove</button>
	</div>
</template>

<script>
	export default {
		props: ['keyword']
	}
</script>