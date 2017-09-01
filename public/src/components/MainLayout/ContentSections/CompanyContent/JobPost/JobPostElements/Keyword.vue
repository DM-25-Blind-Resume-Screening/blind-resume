<template>
		<div class="keyword">
			{{keywordObjectPassedAsProps.keywordName}} -
			<button @click="$emit('remove')">Remove</button>
		</div>
</template>

<script>
export default {
	props: ['keywordObjectPassedAsProps']
}
</script>
