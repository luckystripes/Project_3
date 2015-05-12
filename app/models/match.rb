class Match < ActiveRecord::Base
	belongs_to :job
	belongs_to :seeker, foreign_key: 'user_id'
end
