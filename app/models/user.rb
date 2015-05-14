class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  has_secure_password
# attr_reader :password

#   def password=(unencrypted_password)
#     unless unencrypted_password.empty?
#       @password = unencrypted_password
#       self.password_digest = BCrypt::Password.create(unencrypted_password) 
#     end
#   end

#   def authenticate(unencrypted_password)
#     if BCrypt::Password.new(self.password_digest) == unencrypted_password
#       return self
#     else
#       return false
#     end
#   end

  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  # validates :password, presence: true, confirmation: true, length: {in: 6..20}, on: :create


    private
  def format_user_input
    self.first_name = self.first_name.downcase.titleize
    self.last_name = self.last_name.downcase.titleize
    self.email = self.email.downcase
  end 
end
