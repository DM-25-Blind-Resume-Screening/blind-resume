import {homeRoutes} from './homeRoutes';
import RouterError from './RouterError.vue'
import MainLayout from '../components/MainLayout/MainLayout.vue'
import {userLanding, userMainRoute, userResumeRoute, userJobPostRoute} from './userRoutes';
import {companyLanding, companyMainRoute, companyNewJobPostRoute, companyJobPostRoute, companyResumeViewerRoute, companyResumeViewerShortlistRoute, companySelectedCandidatesRoute} from './companyRoutes'

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
			companyLanding,
			companyMainRoute,
			companyNewJobPostRoute,
			companyJobPostRoute,
			companyResumeViewerRoute,
			companyResumeViewerShortlistRoute,
			companySelectedCandidatesRoute
		]

	},
	{
		path: '/*',
		component: RouterError
	}
]
