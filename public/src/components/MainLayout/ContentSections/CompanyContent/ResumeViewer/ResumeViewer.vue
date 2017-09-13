<template>
	<div>
		<app-default-header>
			Job Position Title Here
		</app-default-header>
		<div class="rv-buttons">
			<button @click="pass" class="rv-pass-btn">Pass</button>
			<button @click="save" class="rv-save-btn">Save</button>
		</div>

		<div class="resume-viewer-container">
			<div v-if="!resumes.length">Loading...</div>
			<div class="hire-me" v-else>
				<transition appear
							mode="out-in"
							:duration="{enter: 1000, leave: 500}"
							enter-active-class="animated slideInRight"
							:leave-active-class="leaveClass">

					<app-blind-resume class="display-resume-container displayResume"
							v-if="show_box"
							:resume="resumes[currentIndex]"
							@click="remove(index)"
							key="currentIndex">
					</app-blind-resume>

					<!-- <app-blind-resume key="currentIndex+1" class="nextResume"></app-blind-resume> -->

				</transition>
			</div>
		</div>

	</div>
</template>

<script>
import DefaultHeader from '../../../Headers/DefaultHeader.vue'
import BlindResume from './BlindResume.vue'
import axios from 'axios'
export default {
	data() {
		return {
			leaveClass: "animated rotateOutDownLeft",
			show_box: true,
			resumes: [],
			currentIndex: 0
		}
	},

	methods: {
		getInitialApplications() {
			return axios.get(`http://localhost:3000/api/job_postings/${this.$route.params.job_post_id}/resumes`)
						.then(res => {
							this.resumes = res.data
						})
						.catch(err => console.log(err))
		},
		pass() {
			this.leaveClass = "animated rotateOutDownLeft";
			const vm = this;
			setTimeout(function() {
				vm.remove()
			}, 10)
		},
		save() {
			this.leaveClass = "animated bounceOutUp";
			const vm = this;
			setTimeout(function() {
				vm.remove()
			}, 10)
		},
		next() {
			if (this.currentIndex + 1 < this.resumes.length) {
				this.currentIndex++
			}
		},
		remove(index) {
			this.show_box = false
			this.resumes.splice(index, 1);
			const vm = this
			setTimeout(function() {
				vm.show_box = true;
			}, 700);
		}
	},

	components: {
		appBlindResume: BlindResume,
		appDefaultHeader: DefaultHeader
	},
	created() {
		this.getInitialApplications()
	}

}
</script>

<style>
.resume-viewer-container {
	display: flex;
	align-items: center;
	margin-top: 30px;
}

.display-resume-container {
	width: 60%;
	display: flex;
	justify-content: center;
	background-color: #fff;
	margin-top: 30px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	margin: auto;
}

.hire-me {
	width: 100%;
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
	background: #2ED590;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
	margin-left: 40%;
	cursor: pointer;
}

.rv-pass-btn {
	width: 130px;
	height: 35px;
	outline: none;
	background: #D73944;
	border-radius: 50px;
	border: none;
	text-transform: uppercase;
	font-size: 17px;
	font-weight: 500;
	letter-spacing: 1px;
	color: #fff;
	cursor: pointer;
}
</style>
