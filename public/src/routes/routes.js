import {homeRoutes} from './homeRoutes';
import Landing from '../components/Home/Landing.vue'
import MainLayout from '../components/MainLayout/MainLayout.vue'
import {userMainRoute, userResumeRoute, userJobPostRoute} from './userRoutes';
import {companyMainRoute, companyNewJobPostRoute, companyJobPostRoute} from './companyRoutes'

export const routes = [
	homeRoutes,
	{
		path: '/app',
		component: MainLayout,
		children: [
			userMainRoute,
			userResumeRoute,
			userJobPostRoute,
			companyMainRoute,
			companyNewJobPostRoute,
			companyJobPostRoute
		]

	},
	{
		path: '/*',
		component: Landing
	}
]