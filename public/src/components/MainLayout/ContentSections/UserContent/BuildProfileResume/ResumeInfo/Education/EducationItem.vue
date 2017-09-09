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
        <!-- <div class="ei-flex" v-else>
            <h2 class="ei-h2">Degree</h2> -->
        <!-- <md-input-container v-else class="jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.degree"></md-input>
            </md-input-container> -->

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.study_field}}</h3>

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.from_date}} - {{propsEducationInfo.to_date}}</h3>

        <h3 v-if="!isEditingEducation">{{propsEducationInfo.description}}</h3>

      </div>

      <div v-else class="exp-container ei-container">
        <div class="ei-flex">
          <h2 class="ei-h2">Degree</h2>
          <h2 class="ei-h2">Field of Study</h2>
          <h2 class="ei-h2">From</h2>
          <h2 class="ei-h2">Description</h2>
        </div>
        <div class="ei-edits-inputs-container">

          <md-input-container class="jd-input-job-title" md-inline>
            <md-input v-model="propsEducationInfo.degree"></md-input>
          </md-input-container>

           <md-input-container class="jd-input-job-title" md-inline>
            <md-input v-model="propsEducationInfo.study_field"></md-input>
          </md-input-container>

          <div class="ei-date-inputs">
            <md-input-container class="jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.from_date"></md-input>
            </md-input-container>

            <md-input-container class="ei-end-date jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.to_date"></md-input>
            </md-input-container>
          </div>

          <textarea v-model="propsEducationInfo.description" class="ei-textarea-desciption"></textarea>

         
        </div>
         <div class="save-exp-container">
            <button class="resume-save-btn" v-if="isEditingEducation" @click="isEditingEducation = false">
              Save</button>
          </div>
      </div>

      <!-- <div class="ei-flex" v-else>
            <h2 class="ei-h2">Field of Study</h2>
            <md-input-container class="jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.study_field"></md-input>
            </md-input-container>
          </div> -->

      <!-- <div v-else class="ei-date-inputs">
            <h2 class="ei-h2">From</h2>
            <md-input-container class="ei-date jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.from_date"></md-input>
            </md-input-container> -->

      <!-- <md-input-container class="ei-date jd-input-job-title" md-inline>
              <md-input v-model="propsEducationInfo.to_date"></md-input>
            </md-input-container>
          </div> -->

      <!-- <div v-else class="ei-flex">
            <h2 class="ei-h2">Description</h2>
            <textarea v-model="propsEducationInfo.description" class="ei-textarea-desciption"></textarea>
          </div> -->

    </div>
  </div>
  </div>
</template>

<script>
export default {
  props: ['propsEducationInfo'],
  data() {
    return {
      isEditingEducation: false
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

.md-input-container .md-has-value:first-child {
  color: white !important;
}

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
  margin: 35px 20px;
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

.save-btn-container {
  display: flex;
  justify-content: flex-end;
  margin-right: 20px;
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
</style>


