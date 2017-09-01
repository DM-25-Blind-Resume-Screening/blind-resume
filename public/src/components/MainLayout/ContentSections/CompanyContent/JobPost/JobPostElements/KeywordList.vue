<template>
	<div class="kl-container">
		<div class="jd-header">
			<h1 class="jd-h1">Keywords</h1>
			<img class="jd-pencil" src="../../../../../../assets/pencil-edit-button.svg"/>
		</div>
		<div class="kl-content-container">
		
			<!-- <md-input-container class="kl-input-keyword" md-inline>
				<label>Enter keywords here e.g., Front End Developer, React etc.</label> -->
				<md-chips
						type="text" v-model="internalKeywordList"
						md-input-placeholder="E.g., Front End Developer, React etc." 
						class="md-input-invalid kl-input-keyword">
  					<span class="md-error">Enter up to 5 keywords</span>
				</md-chips>
				<!-- <md-input type="text" v-model="newKeyword" @keyup.enter.native="pushToKeywordList"></md-input> -->
			<!-- </md-input-container> -->

			<!-- <app-keyword v-for="(keywordObject, index) in internalKeywordList" :key="keywordObject.id" :keywordObjectPassedAsProps="keywordObject" @remove="internalKeywordList.splice(index, 1)">
			</app-keyword> -->
		</div>
	</div>
</template>

<script>
import Keyword from './Keyword.vue';
export default {
	data() {
		return {
			// newKeyword: '',
			// keywordId: 0,
			internalKeywordList: []
		}
	},
	watch: {
		internalKeywordList() {
			this.$emit('input', this.internalKeywordList)
		}
	},
	methods: {
		// pushToKeywordList() {
		// 	if (this.internalKeywordList.length < 5) {
		// 		this.internalKeywordList.push({ id: this.keywordId, keywordName: this.newKeyword });
		// 		this.keywordId += 1;
		// 		this.newKeyword = '';
		// 	} else {
		// 		alert('You can only add 5 keywords.  Please delete some to add more')
		// 		this.newKeyword = '';
		// 	}
		// },
	},
	components: {
		appKeyword: Keyword
	}
}
</script>

<style>
.kl-container {
	width: 75%;
	margin: 20px auto;
}

.kl-content-container {
	border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
}

.kl-input-keyword {
	width: 92%;
	margin-left: 30px;
	margin-bottom: 30px;
}
</style>
