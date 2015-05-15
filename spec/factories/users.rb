FactoryGirl.define do 
  factory :user do |f| 
    f.first_name "Jimmy" 
    f.last_name "Mango"
    f.email "jimmy@mango.com"
    f.password "pppppp" 
    f.job_type "roofer"
  end 
end 