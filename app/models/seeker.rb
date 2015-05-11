class Seeker < User
	has_many :matches, foreign_key: 'user_id'
	has_many :jobs, through: :matches
end
