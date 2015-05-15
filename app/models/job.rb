class Job < ActiveRecord::Base
	belongs_to :employer, foreign_key: 'user_id'

	has_many :matches
	has_many :seekers, through: :matches

	validates :title, presence: true 
	validates :job_type, presence: true 
	validates :salary, presence: true 
	validates :skill, presence: true 
	validates :location, presence: true 
end
