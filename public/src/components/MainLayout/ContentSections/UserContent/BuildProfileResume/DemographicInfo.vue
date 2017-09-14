<template>
	<div class="di-container">
	    
	    <div class="left-about-column">
		    <div class="user-image-div" v-if="!displayUserInfo" :style="{'background-image': 'url(https://www.drupal.org/files/issues/default-avatar.png)'}"></div>
			<div class="user-image-div" v-else :style="{'background-image': 'url('+displayUserInfo.picture+')'}">
			</div>
	    	
	    </div>
		
		<div class="di-content-container">
			<div class="onec-demo">
				
				<h1 v-if="!displayUserInfo">Loading..</h1>
				<h1 v-else>{{displayUserInfo.first_name}} {{displayUserInfo.last_name}}</h1>
					
					<h3>About Me:</h3>
					<p v-if="conditionalRenderInputs">{{ userDemographics.about_me }}</p>
					<md-input-container v-else>
						<md-textarea v-model="userDemographics.about_me"></md-textarea>
					</md-input-container>

				</div>

			<div class="twoc-demo">

				<div class="edit-pencil-demo">
					<img @click="isEditingDemographics = !isEditingDemographics" class="new-resume-pencil jd-pencil" src="../../../../../assets/pencil-edit-button-blue.svg"/>
				</div>
				
				<label v-if="conditionalRenderInputs">Location:  <span>{{ userDemographics.location }}</span></label>
				<md-input-container class="jd-input-job-title" md-inline v-else>
					<label>e.g, City, State</label>
					<md-input v-model="userDemographics.location" @keyup.enter.native="isEditingDemographics=false"></md-input>
				</md-input-container>
				
				<br>

				<label v-if="conditionalRenderInputs">Phone: <span> {{userDemographics.phone}}</span></label>
				<md-input-container class="jd-input-job-title" md-inline v-else>
					<label>e.g, 123-456-7891</label>
					<md-input v-model="userDemographics.phone" @keyup.enter.native="isEditingDemographics=false"></md-input>
				</md-input-container>

				<br>

				<label v-if="conditionalRenderInputs">Email: <span>{{userDemographics.email}}</span></label>
				<md-input-container class="jd-input-job-title" md-inline v-else>
					<label>Email</label>
					<md-input v-model="userDemographics.email" @keyup.enter.native="isEditingDemographics=false"></md-input>
				</md-input-container>

				<br>

				<label v-if="conditionalRenderInputs">Portfolio: 
					<a :href="userDemographics.portfolio">{{userDemographics.portfolio}}</a>
				</label>
				<md-input-container class="jd-input-job-title" md-inline v-else>
					<label>Portfolio Site URL</label>
					<md-input v-model="userDemographics.portfolio" @keyup.enter.native="isEditingDemographics=false"></md-input>
				</md-input-container>

				<br>

				<label v-if="conditionalRenderInputs">LinkedIn: 
					<a :href="userDemographics.linkedin">{{userDemographics.linkedin}}</a>
				</label>
				<md-input-container class="jd-input-job-title" md-inline v-else>
					<label>Linkedin URL</label>
					<md-input v-model="userDemographics.linkedin" @keyup.enter.native="isEditingDemographics=false"></md-input>
				</md-input-container>
				



			</div>


		</div>
	</div>
</template>

<script>
import {mapGetters} from 'vuex'
export default {
	props: ['userDemographics'],
	data() {
		return {
			isEditingDemographics: false,
			internalLocation: '',
			internalPhone: '',
			inernalEmail: '',
			internalAbout: '',
			internalPortfolio: '',
			internalLinkedin: ''
		}
	},
	computed: {
		...mapGetters(['displayUserInfo']),
		conditionalRenderInputs() {
			return !this.isEditingDemographics || !this.userDemographics
		}
	}
}
</script>


<style>

.left-about-column {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-left: 80px;
}
.user-image-div {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	/*margin-left: 80px;*/
	margin-top: 30px;
	overflow: hidden;
	background-size: cover;
	background-position: center;
}

.user-image {
	width: 150px !important;
	height: 150px !important;
	object-fit: cover;
}

.di-container {
	display: flex;
}

.di-content-container {
	display: flex;
	margin-left: 20px;
	margin-top: 40px;
	line-height: 30px;
	width: 100%;
}

.onec-demo {
	width: 45%;
}

.twoc-demo {
	width: 45%;
	margin-left: 15px;
}

.about-textarea {
	width: 90%;
	height: 100px;
	outline: none;
	font-size: 14px;
	font-family: 'Avenir', Arial, Helvetica, sans-serif;
}

.about-textarea:focus {
	border: 2px solid #3f51b5;
}

.edit-pencil-demo {
	position: absolute;
	display: flex;
	justify-content: center;
	right: 0;
	margin-top: 5px;
	margin-right: 80px;
}

.di-container h1,
.di-container h3 {
	font-weight: 700;
}
</style>