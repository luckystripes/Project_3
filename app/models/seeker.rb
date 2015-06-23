class Seeker < User
	has_many :matches, foreign_key: 'user_id'
	has_many :jobs, through: :matches

	# def self.picked?(job)
	#  where(job_type: job.job_type).includes(:matches).where.not(matches: {job_id:job, job_accept: true})
 #  	end

  	def matched_jobs
  		self.jobs.includes(:matches).where(matches: {user_accept: true, job_accept: true})
  	end
  validates :job_type, presence: true
end
