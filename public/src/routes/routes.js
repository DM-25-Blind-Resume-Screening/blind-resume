import {homeRoutes} from './homeRoutes';
import RouterError from './RouterError.vue'
import MainLayout from '../components/MainLayout/MainLayout.vue'
import {userLanding, userMainRoute, userResumeRoute, userJobPostRoute} from './userRoutes';
import {companyMainRoute, companyNewJobPostRoute, companyJobPostRoute, companyResumeViewerRoute, companySelectedCandidatesRoute} from './companyRoutes'

export const routes = [
	homeRoutes,
	{
		path: '/app',
		component: MainLayout,
		children: [
			userLanding,
			userMainRoute,
			userResumeRoute,
			userJobPostRoute,
			companyMainRoute,
			companyNewJobPostRoute,
			companyJobPostRoute,
			companyResumeViewerRoute,
			companySelectedCandidatesRoute
		]

	},
	{
		path: '/*',
		component: RouterError
	}
]
