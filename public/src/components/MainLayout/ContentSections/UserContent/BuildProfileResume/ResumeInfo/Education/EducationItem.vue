<template>
  <div class="education-content-container">
    <div class="eil-text-container">

      <div class="ei-subheader">
        <h1 v-if="!isEditingEducation" class="eil-title">{{propsEducationInfo.school}}</h1>
        <md-input-container v-else class="jd-input-job-title" md-inline>
          <md-input v-model="propsEducationInfo.school" style="color: white"></md-input>
        </md-input-container>
        <img @click="isEditingEducation=true" class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
      </div>

      <div v-if="!isEditingEducation" class="subheader-text">
        <h3 v-if="!isEditingEducation">{{propsEducationInfo.degree}}</h3>

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.study_field}}</h3>

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.from_date}} - {{propsEducationInfo.to_date}}</h3>

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.description}}</h3>

      </div>

      <div v-else class="exp-container ei-container">
        <div class="ei-flex">
          
          
          
          
        </div>
        <div class="ei-edits-inputs-container">
          
          <div class="label-input-container">
          <h2 class="content-label">Degree</h2>
          <md-input-container class="jd-input-job-title" md-inline>
            <md-input v-model="propsEducationInfo.degree"></md-input>
          </md-input-container>
          </div>

          <div class="label-input-container">
          <h2 class="content-label">Field of Study</h2>
           <md-input-container class="jd-input-job-title" md-inline>
            <md-input v-model="propsEducationInfo.study_field"></md-input>
          </md-input-container>
          </div>

          <div class="label-input-container">
          <h2 class="content-label">From</h2>
          <div class="ei-date-inputs">
            <md-input-container class="jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.from_date"></md-input>
            </md-input-container>

            <md-input-container class="ei-end-date jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.to_date"></md-input>
            </md-input-container>
          </div>
          </div>

          <div class="label-input-container">
          <h2 class="ei-h2">Description</h2>
          <textarea v-model="propsEducationInfo.description" class="ei-textarea-desciption"></textarea>
          </div>
         
        </div>
         <div class="save-exp-container">
            <button @click="deleteResumeEducation" class="delete-btn resume-save-btn">Delete</button>
            <button 
              class="resume-save-btn" 
              @click="updateResumeEducation">
              Save</button>
          </div>
      </div>


    </div>
  </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  props: ['propsEducationInfo'],
  data() {
    return {
      isEditingEducation: false
    }
  },
  methods: {
    updateResumeEducation() {
      return axios.patch(`http://localhost:3000/api/education/${this.propsEducationInfo.id}`, 
          {
            school: this.propsEducationInfo.school,
            degree: this.propsEducationInfo.degree,
            study_field: this.propsEducationInfo.study_field,
            from_date: this.propsEducationInfo.from_date,
            to_date: this.propsEducationInfo.to_date,
            description: this.propsEducationInfo.description
          }
        ).then(res => {
          console.log(res)
          this.isEditingEducation = false
        })
         .catch(err => console.log(err))
    },
    deleteResumeEducation() {
      return axios.delete(`http://localhost:3000/api/education/${this.propsEducationInfo.id}`)
              .then(res => {
                this.$emit('deletedEdu', res.data[0].id)
                this.isEditingEducation = false
              }).catch(err => console.log(err))
    }
  }
}
</script>

<style>
.ei-content-container {
  border-right: 1px solid #cccccc;
  border-bottom: 1px solid #cccccc;
  border-left: 1px solid #cccccc;
  padding-bottom: 30px;
  padding-top: 10px;
}

/* .md-input-container .md-has-value:first-child {
  color: white !important;
} */

.education-content-container {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.ei-flex {
  display: flex;
  flex-direction: column;
  margin-left: 20px;
}

.ei-textarea-desciption {
  width: 100%;
  margin-left: 20px;
  height: 150px;
  outline: #3f51b5;
  font-size: 14px;
}

.eil-text-container {
  width: 90%;
  padding-top: 20px;
}

.md-input-container {
  margin-left: 20px;
  width: 80%;
}

.ei-date.md-input-container {
  width: 30%;
}

.resume-save-btn {
  width: 110px;
  height: 30px;
  background: transparent;
  border: 1px solid #3f51b5;
  font-size: 15px;
  color: #3f51b5;
}

.resume-save-btn:hover {
  background: #3f51b5;
  color: #fff;
}

.education-section {
  margin-top: 20px;
}

.new-resume-pencil {
  margin-right: 10px;
}

.delete-btn {
  margin-right: 10px;
}
</style>


