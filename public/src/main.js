import Vue from 'vue'
import App from './App.vue'

// VueRouter
import VueRouter from 'vue-router'
import {routes} from './routes/routes.js'
Vue.use(VueRouter)

const router = new VueRouter({
	routes: routes
})

// VueQuillEditor
import VueQuillEditor from 'vue-quill-editor'
Vue.use(VueQuillEditor)


new Vue({
  el: '#app',
  router: router,
  render: h => h(App)
})
