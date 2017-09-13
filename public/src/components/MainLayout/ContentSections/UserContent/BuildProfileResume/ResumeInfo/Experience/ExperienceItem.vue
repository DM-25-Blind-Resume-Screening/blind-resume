<template>
  <div class="eil-content-container">
    <div class="ei-text-container">

      <div class="ei-subheader">
        <h1 v-if="!isEditingExperience" class="eil-title">{{propExperience.title}}</h1>
        <md-input-container v-else class="jd-input-job-title" md-inline>
          <md-input v-model="propExperience.title" style="color: white"></md-input>
        </md-input-container>
        <img @click="isEditingExperience = !isEditingExperience" class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
      </div>

      <div class="exp-content-flex">

        <div v-if="!isEditingExperience" class="subheader-text">
          <h3>{{propExperience.company}}</h3>

          <h3>{{propExperience.from_date}} - {{propExperience.to_date}}</h3>

          <h3>{{propExperience.description}}</h3>

        </div>

        <div v-else class="exp-container ei-container">

          <div class="ei-edits-inputs-container">

            <div class="label-input-container">
              <h2 class="content-label">Company</h2>
              <md-input-container class="jd-input-job-title" md-inline>
                <md-input v-model="propExperience.company"></md-input>
              </md-input-container>
            </div>

            <div class="label-input-container">

              <h2 class="content-label">From</h2>
              <div class="ei-date-inputs">
                <md-input-container class="jd-input-job-title" md-inline>
                  <md-input v-model="propExperience.from_date"></md-input>
                </md-input-container>

                <md-input-container class="ei-end-date jd-input-job-title" md-inline>
                  <md-input v-model="propExperience.to_date"></md-input>
                </md-input-container>
              </div>
            </div>

            <div class="label-input-container">
              <h2 class="d-content-label">Description</h2>
              <textarea v-model="propExperience.description" class="ei-textarea-desciption"></textarea>
            </div>
          </div>

          <div class="save-exp-container">
            <div class="resume-edit-btns">
              <button class="delete-btn resume-save-btn" @click="deleteResumeExperience">
                Delete</button>
              <button class="resume-save-btn" @click="updateResumeExperience">
                Save</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  props: ['propExperience'],
  data() {
    return {
      isEditingExperience: false
    }
  },
  methods: {
    updateResumeExperience() {
      return axios.patch(`http://localhost:3000/api/experience/${this.propExperience.id}`,
        {
          title: this.propExperience.title,
          company: this.propExperience.company,
          from_date: this.propExperience.from_date,
          to_date: this.propExperience.to_date,
          description: this.propExperience.description
        }
      ).then(res => {
        this.isEditingExperience = false;
      }).catch(err => console.log(err))
    },
    deleteResumeExperience() {
      return axios.delete(`http://localhost:3000/api/experience/${this.propExperience.id}`)
        .then(res => {
          this.isEditingExperience = false;
          this.$emit('deletedExp', res.data[0].id)
        }).catch(err => console.log(err))
    }
  }
}
</script>

<style>
.eil-content-container {
  display: flex;
  align-items: center;
  flex-direction: column;
}

.ei-text-container {
  margin-bottom: 10px;
  margin-top: 10px;
  width: 90%;
}

.ei-edits-inputs-container {
  width: 75%;
}

.ei-subheader {
  height: 50px;
  background: linear-gradient(45deg, #3f51b5, #2e73b6);
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  display: flex;
  justify-content: space-between;
}

.eil-title {
  font-size: 17px;
  color: #fff;
  margin-left: 20px;
  display: flex;
  justify-content: center;
  flex-direction: column;
  height: 100%;
}

.subheader-text {
  width: 100%;
  border-right: 1px solid #cccccc;
  border-bottom: 1px solid #cccccc;
  border-left: 1px solid #cccccc;
  padding-left: 20px;
  padding-top: 10px;
  padding-bottom: 10px;
}

.eil-date-container {
  display: flex;
}

.exp-content-flex {
  display: flex;
  width: 100%;
}

.exp-container {
  display: flex;
  width: 100%;
  padding-bottom: 20px;
  border-right: 1px solid #cccccc;
  border-bottom: 1px solid #cccccc;
  border-left: 1px solid #cccccc;
}

.save-exp-container {
    position: relative;
    height: 350px;
    width: 300px;
    margin-left: 20px;
    margin-top: 10px;
}

.resume-edit-btns {
    display: flex;
    justify-content: flex-end;
    height: auto;
    height: 40px;
    position: absolute;
    bottom: 0;
}

.label-input-container {
  display: flex;
}

.content-label {
  margin: auto;
  width: 120px;
  padding-right: 10px;
  text-align: right;
  font-size: 15px;
  margin-left: 20px;
}

.d-content-label {
  width: 100px;
  text-align: right;
  font-size: 15px;
  margin-left: 45px;
}

.ei-date-inputs {
  display: flex;
  width: 80%;
}
</style>


