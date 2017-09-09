<template>
  <div class="eil-content-container">
    <div class="ei-text-container">

      <div class="ei-subheader">
        <h1 v-if="!isEditingExperience" class="eil-title">{{propExperience.title}}</h1>
        <md-input-container v-else class="jd-input-job-title" md-inline>
          <md-input v-model="propExperience.title" style="color: white"></md-input>
        </md-input-container>
        <img @click="isEditingExperience=true" class="new-resume-pencil jd-pencil" src="../../../../../../../assets/pencil-edit-button.svg" />
      </div>

      <div class="exp-content-flex">

        <div v-if="!isEditingExperience" class="subheader-text">
          <h3>{{propExperience.company}}</h3>

          <h3>{{propExperience.from_date}} - {{propExperience.to_date}}</h3>

          <h3>{{propExperience.description}}</h3>

        </div>

        <div v-else class="exp-container ei-container">
          <div class="ei-flex">
            <h2 class="ei-h2">Company</h2>
            <h2 class="ei-h2">From</h2>
            <h2 class="ei-h2">Description</h2>
          </div>
          <div class="ei-edits-inputs-container">

            <md-input-container class="jd-input-job-title" md-inline>
              <md-input v-model="propExperience.company"></md-input>
            </md-input-container>

            <div class="ei-date-inputs">
              <md-input-container class="jd-input-job-title" md-inline>
                <md-input v-model="propExperience.from_date"></md-input>
              </md-input-container>

              <md-input-container class="ei-end-date jd-input-job-title" md-inline>
                <md-input v-model="propExperience.to_date"></md-input>
              </md-input-container>
            </div>

            <textarea v-model="propExperience.description" class="ei-textarea-desciption"></textarea>

          </div>


            <div class="save-exp-container">
              <button class="resume-save-btn" v-if="isEditingExperience" @click="isEditingExperience = false">
                Save</button>
            </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['propExperience'],
  data() {
    return {
      isEditingExperience: false
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
  width: 100%;
  padding-bottom: 20px;
}

.save-exp-container {
  align-self: flex-end;
  margin-right: 15px;
}
</style>


