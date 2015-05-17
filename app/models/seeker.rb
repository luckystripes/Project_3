class Seeker < User
	has_many :matches, foreign_key: 'user_id'
	has_many :jobs, through: :matches

	def self.picked?(job)
	 where(job_type: job.job_type).includes(:matches).where(matches: {user_accept: nil, job_accept:nil})
  	end



end
