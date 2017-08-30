import Vue from 'vue'
import App from './App.vue'


import VueQuillEditor from 'vue-quill-editor'

Vue.use(VueQuillEditor)


new Vue({
  el: '#app',
  render: h => h(App)
})
