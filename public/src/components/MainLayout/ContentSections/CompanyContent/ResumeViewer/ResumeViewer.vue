1<template>
	<div>
		<app-default-header>
			Job Position Title Here
		</app-default-header>

			<div class="rv-buttons">
				<button @click="pass" class="rv-pass-btn">Pass</button>
				<!-- <button @click="selectCandidate" class="rv-save-btn" v-if="isShortlist">Interview</button> -->
				<button @click="save" class="rv-save-btn">
					<span v-if="isShortlist">Interview</span>
					<span v-else>Shortlist</span>
				</button>
			</div>

			<div class="resume-viewer-container">
				<div v-if="!resumes.length">No resumes to view!</div>
				<div class="hire-me" v-else>
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
			isShortlist: false,
			leaveClass: "animated rotateOutDownLeft",
			show_box: true,
			resumes: [],
			currentIndex: 0
		}
	},

	methods: {
		getInitialApplications() {
			return axios.get(`/api/job_postings/${this.$route.params.job_post_id}/resumes`)
						.then(res => {
							this.resumes = res.data.filter(item => item.shortlist === false)
						})
						.catch(err => console.log(err))
		},
		getShortListApplications() {
			return axios.get(`/api/job_postings/${this.$route.params.job_post_id}/shortlist`)
						.then(res => {
							this.resumes = res.data
						})
						.catch(err => console.log(err))
		},
		pass() {
			return axios.delete(`/api/${this.$route.params.job_post_id}/${this.resumes[this.currentIndex].resume_id}`)
						.then(() => {
							this.leaveClass = "animated rotateOutDownLeft";
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
		save() {
			if(this.isShortlist) {
				return axios.patch(`api/${this.$route.params.job_post_id}/${this.resumes[this.currentIndex].resume_id}/interview`)
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
						})
			} else {
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
		if(this.$route.path.includes('shortlist')) {
			console.log('has shortlist')
			this.isShortlist = true
			this.getShortListApplications()
		} else {
			this.isShortlist = false
			console.log('regular resumes')
			this.getInitialApplications()
		}
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