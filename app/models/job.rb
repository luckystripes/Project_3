class Job < ActiveRecord::Base
	belongs_to :employer, foreign_key: 'user_id'
end
