<template>
	<div>
		<input type="text" v-model="newKeyword" @keyup.enter="pushToKeywordList">
		<app-keyword 
			v-for="(keyword, index) in internalKeywordList" 
			:key="keyword.id" 
			:keyword="keyword"
			@remove="internalKeywordList.splice(index, 1)">
			</app-keyword>
	</div>
</template>

<script>
	import Keyword from './Keyword.vue';
	export default {
		data() {
			return {
				newKeyword: '',
				keywordId: 0,
				internalKeywordList: []
			}
		},
		watch: {
			internalKeywordList() {
				this.$emit('input', this.internalKeywordList)
			}
		},
		methods: {
			pushToKeywordList() {
				if(this.internalKeywordList.length < 5) {
					this.internalKeywordList.push({id: this.keywordId, keyword: this.newKeyword});
					this.keywordId += 1;
					this.newKeyword = '';
				} else {
					alert('You can only add 5 keywords.  Please delete some to add more')
					this.newKeyword = '';
				}
			},
		},
		components: {
			appKeyword: Keyword
		}
	}
</script>