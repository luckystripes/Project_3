class Job < ActiveRecord::Base
	belongs_to :employer, foreign_key: 'user_id'
	has_many :matches
	has_many :seekers, through: :matches
end
