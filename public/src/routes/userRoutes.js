import UserSidebar from '../components/MainLayout/Sidebars/UserSidebar/UserSidebar.vue'
import JobListings from '../components/MainLayout/ContentSections/UserContent/JobListings/JobListings.vue'
import LongJobPost from '../components/MainLayout/ContentSections/UserContent/JobPostInfo/LongJobPost.vue'
import ResumeInfo from '../components/MainLayout/ContentSections/UserContent/BuildProfileResume/ResumeInfo.vue'
import UserLanding from '../components/MainLayout/ContentSections/UserContent/JobListings/UserLanding.vue'

export const userLanding =
	{
		path: 'user',
		components: {
			content: UserLanding

		}
	}

export const userMainRoute =
	{
		path: 'user/:user_id',
		components: {
			sidebar: UserSidebar,
			content: JobListings
		}
	}
export const userResumeRoute =
	{
		path: 'user/:user_id/resume',
		components: {
			sidebar: UserSidebar,
			content: ResumeInfo
		}
	}
export const userJobPostRoute =
	{
		path: 'user/:user_id/:job_post_id',
		components: {
			sidebar: UserSidebar,
			content: LongJobPost
		}
	}
