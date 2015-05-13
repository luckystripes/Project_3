class Job < ActiveRecord::Base
	belongs_to :employer, foreign_key: 'user_id'
  belongs_to :category
end
