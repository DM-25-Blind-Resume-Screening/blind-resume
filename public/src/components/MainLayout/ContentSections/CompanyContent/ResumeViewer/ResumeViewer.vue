<template>
	<div>
		<app-default-header>
			Job Position Title Here
		</app-default-header>

		<!-- <div class="resume-container"> -->
		<!-- <div class="display-resume-container"> -->
		<!-- <app-blind-resume class="displayResume"></app-blind-resume> -->
		<!-- <h1>{{numbers[currentIndex]}}</h1> -->
		<!-- </div> -->
		<!-- <app-blind-resume class="nextResume"></app-blind-resume> -->
		<!-- </div> -->

		<div class="rv-buttons">
			<button @click="pass" class="rv-pass-btn">Pass</button>
			<button @click="save" class="rv-save-btn">Save</button>
		</div>

		<div class="resume-container">
			<div class="display-resume-container">
				<transition appear 
							mode="out-in" 
							v-if="show_box" 
							enter-active-class="animated slideInRight" 
							:leave-active-class="leaveClass">

					<app-blind-resume class="displayResume" 
							:resume="resumes[currentIndex]" 
							@click="remove(index)">
					</app-blind-resume>

					<app-blind-resume class="nextResume"></app-blind-resume>

				</transition>
			</div>
		</div>

	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
import BlindResume from './BlindResume.vue'
export default {
	data() {
		return {
			leaveClass: "animated hinge",
			show_box: true,
			resumes: [{id: 1, title: 'WebDev', company: 'DevMtn'},{id: 2, title: 'Sales Assoc', company: "Macy's"}],
			currentIndex: 0
		}
	},

	methods: {
		pass() {
			this.leaveClass = "animated hinge";
			this.next()
			this.remove()
		},
		save() {
			this.leaveClass = "animated bounceOutUp";
			this.next()
			this.remove()
		},
		next() {
			if (this.currentIndex + 1 < this.numbers.length) {
				this.currentIndex++
			}
		},
		remove(index) {
			this.resumes.splice(index, 1);
		}
	},

	components: {
		appBlindResume: BlindResume,
		appDefaultHeader: DefaultHeader
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

.rv-buttons {
	display: flex;
	width: 100%;
	justify-content: center;
	margin-top: 40px;
}

.rv-save-btn {
	width: 130px;
	height: 35px;
	outline: none;
	background: #2baf7a;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
	margin-left: 40%;
}

.rv-pass-btn {
	width: 130px;
	height: 35px;
	outline: none;
	background: #D55050;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
}
</style>