<template>
	<div class="br-resume-contaier">
		<div>
			<div class="br-resume-content">
				<h1 class="br-h1">Work Experience</h1>
				<div v-for="experience in resume.resume_work_experience" :key="experience.id">
					<div class="br-work-header">
						<h1>{{experience.title}} - {{experience.company}}</h1>
					</div>
					<span><em>{{experience.from_date}}</em></span> - <span><em>{{experience.to_date}}</em></span>
					<p>{{experience.description}}</p>
					<br>
				</div>
				<hr>
				<h1 class="br-h1">Education</h1>
				<div v-for="education in resume.resume_education" :key="education.id">
					<h1>{{education.school}}</h1>
					<h3>{{education.study_field}} - {{education.degree}}</h3>
					<span>{{education.from_date}}</span> - <span>{{education.to_date}}</span>
					<p>{{education.description}}</p>
				</div>
				<hr>
				<h1 class="br-h1">Skills</h1>
				<ul>
					<li v-for="skill in resume.resume_skills" :key="skill.id">{{skill.name}}</li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		props: ['resume']
	}
</script>


<style>
.br-resume-content {
	margin-left: 15px;
	margin-top: 10px;
}

.br-resume-content hr {
	width: 50%;
}

.br-h1 {
	font-size: 15px;
	font-weight: 700;
	text-decoration: underline;
	margin-top: 10px;
	margin-bottom: 5px;
}

.br-work-header {
	display: flex;
}


</style>

