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



// Vue Material
import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.css'
Vue.use(VueMaterial)

Vue.material.registerTheme('about', {
  primary: {
    color: 'light-blue',
    hue: 'A200',
    textColor: 'white'
  }
})

Vue.material.registerTheme('add', {
  primary: {
    color: 'light-blue',
    hue: '900',
    textColor: 'white'
  }
})

new Vue({
  el: '#app',
  router: router,
  render: h => h(App)
})
