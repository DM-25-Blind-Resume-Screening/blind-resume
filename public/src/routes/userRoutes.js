import UserSidebar from '../components/MainLayout/Sidebars/UserSidebar/UserSidebar.vue'
import JobListings from '../components/MainLayout/ContentSections/UserContent/JobListings/JobListings.vue'
import LongJobPost from '../components/MainLayout/ContentSections/UserContent/JobPostInfo/LongJobPost.vue'

export const userRoutes = [
	{
		path: 'user/:user_id',
		components: {
			sidebar: UserSidebar,
			content: JobListings
		}
	},
	{
		path: 'user/:user_id/:job_post_id',
		components: {
			sidebar: UserSidebar,
			content: LongJobPost
		}
	}
]