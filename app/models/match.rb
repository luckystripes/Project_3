class Match < ActiveRecord::Base
	belongs_to :job
	belongs_to :seeker, foreign_key: 'user_id'

	def self.all_matched
     	where({user_accept: true, job_accept: true})
     end
end
