<template>
	<div>
		<app-default-header>
			Job Position Title Here
		</app-default-header>
		<div class="resume-container">
			<div class="display-resume-container">
				<app-blind-resume class="displayResume"></app-blind-resume>
				<!-- <h1>{{numbers[currentIndex]}}</h1> -->
				<!-- <button @click="next">Next</button> -->
			</div>
			<app-blind-resume class="nextResume"></app-blind-resume>
		</div>

	</div>
</template>

<script>
import BlindResume from './BlindResume.vue'
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
export default {
	data() {
		return {
			numbers: [1, 2, 3, 4, 5, 6],
			currentIndex: 0
		}
	},
	components: {
		appBlindResume: BlindResume,
		appDefaultHeader: DefaultHeader
	},
	methods: {
		next() {
			if (this.currentIndex + 1 < this.numbers.length) {
				this.currentIndex++
			}
		}
	}
}
</script>

<style>
.resume-container {
	display: flex;
	align-items: center;
}

.display-resume-container {
	width: 100%;
	display: flex;
	justify-content: center;
}

.displayResume {
	width: 40%;
	height: 500px;
	margin-top: 30px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.nextResume {
	height: 300px;
	position: absolute;
	right: 0;
	margin-right: -100px;
	width: 25%;
	overflow: hidden;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	filter: blur(4px);
}
</style>
