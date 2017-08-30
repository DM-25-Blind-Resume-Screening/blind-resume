import {homeRoutes} from './homeRoutes';
import MainLayout from '../components/MainLayout/MainLayout.vue'
import {userRoutes} from './userRoutes';

export const routes = [
	homeRoutes,
	{
		path: '/app',
		component: MainLayout,
		children: 
			userRoutes
	}
]