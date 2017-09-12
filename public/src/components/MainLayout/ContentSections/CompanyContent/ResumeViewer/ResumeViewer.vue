1<template>
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

		<div class="resume-viewer-container">
			<div v-if="!resumes.length">Loading...</div>
			<div v-else>
				<transition appear 
							mode="out-in" 
							:duration="{enter:1000, leave: 500}"
							enter-active-class="animated slideInRight"
							:leave-active-class="leaveClass">

					<app-blind-resume class="display-resume-container displayResume" 
							v-if="show_box" 
							:resume="resumes[currentIndex]" 
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
			leaveClass: "animated hinge",
			show_box: true,
			resumes: [],
			currentIndex: 0
		}
	},

	methods: {
		getInitialApplications() {
			return axios.get(`/api/job_postings/${this.$route.params.job_post_id}/resumes`)
						.then(res => {
							this.resumes = res.data
						})
						.catch(err => console.log(err))
		},
		pass() {
			return axios.delete(`/api/${this.$route.params.job_post_id}/${this.resumes[this.currentIndex].resume_id}`)
						.then(() => {
							this.leaveClass = "animated hinge";
							const vm = this;
							setTimeout(function() {
								vm.remove()
								if(vm.resumes.length === 0) {
									console.log('resumes empty')
									console.log(vm.$route.params.company_id)
									console.log(vm.$route.params.job_post_id)
									vm.$router.push({path: `/app/company/${vm.$route.params.company_id}/${vm.$route.params.job_post_id}`})
								}
							}, 10)
						}).then(()=> {
						}).catch(err => console.log(err))
		},
		save() {
			return axios.patch(`/api/${this.$route.params.job_post_id}/${this.resumes[this.currentIndex].resume_id}/shortlist`)
						.then(() => {
							this.leaveClass = "animated bounceOutUp";
							const vm = this;
							setTimeout(function() {
								vm.remove()
								if(vm.resumes.length === 0) {
									console.log('resumes empty')
									console.log(vm.$route.params.company_id)
									console.log(vm.$route.params.job_post_id)
									vm.$router.push({path: `/app/company/${vm.$route.params.company_id}/${vm.$route.params.job_post_id}`})
								}
							}, 10)
						}).catch(err => console.log(err))
		},
		remove(index) {
			this.show_box = false
			this.resumes.splice(index, 1);
			const vm = this
			setTimeout(function() {
				vm.show_box = true;
			}, 2000);
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
}

.display-resume-container {
	width: 60%;
	display: flex;
	justify-content: center;
	background-color: #fff;
	margin-top: 30px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

/*
.displayResume {
	width: 80%;
*/
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