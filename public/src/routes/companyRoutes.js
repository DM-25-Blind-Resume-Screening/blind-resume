import CompanySidebar from '../components/MainLayout/Sidebars/CompanySidebar/CompanySidebar.vue'
import CompanyJobList from '../components/MainLayout/ContentSections/CompanyContent/CompanyJobListing/CompanyJobList.vue'
import LongCompanyJobPost from '../components/MainLayout/ContentSections/CompanyContent/CompanyJobListing/LongCompanyJobPost.vue'
import NewJobPost from '../components/MainLayout/ContentSections/CompanyContent/JobPost/NewJobPost.vue'

export const companyMainRoute = 
	{
		path: 'company/:company_id',
		components: {
			sidebar: CompanySidebar,
			content: CompanyJobList
		}
	}

export const companyNewJobPostRoute = 
{
	path: 'company/:company_id/newJob',
	components: {
		sidebar: CompanySidebar,
		content: NewJobPost
	}	
}

export const companyJobPostRoute = 
{
	path: 'company/:company_id/:job_post_id',
	components: {
		sidebar: CompanySidebar,
		content: LongCompanyJobPost
	}
}
