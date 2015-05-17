class Job < ActiveRecord::Base
	belongs_to :employer, foreign_key: 'user_id'

	has_many :matches
	has_many :seekers, through: :matches


  def self.picked?(seeker)
	 where(job_type: seeker.job_type).includes(:matches).where(matches: {user_accept: nil, job_accept:nil})
  end


	validates :title, presence: true 
	validates :job_type, presence: true 
	validates :salary, presence: true 
	validates :skill, presence: true 
	validates :location, presence: true 

end
