import Vue from 'vue'
import Vuex from 'vuex'

import axios from 'axios'

Vue.use(Vuex)

const state = {
	industries: [],
	jobTypes: []
};


const mutations = {
	GET_INDUSTRIES(state, payload) {
		state.industries = payload
	},
	GET_JOB_TYPES(state, payload) {
		state.jobTypes = payload
	}
}

const actions = {
	getIndustries({commit}) {
		return axios.get(`http://localhost:3000/api/industries`)
					.then(res => commit('GET_INDUSTRIES', res.data))
					.catch(err => console.log(err))
	},
	getJobTypes({commit}) {
		return axios.get(`http://localhost:3000/api/jobtypes`)
					.then(res => commit('GET_JOB_TYPES', res.data))
					.catch(err => console.log(err))
	}
}

export default new Vuex.Store({
	state,
	mutations,
	actions
})