class Employer < User
	has_many :jobs, foreign_key: 'user_id'
end
