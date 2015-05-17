FactoryGirl.define do 
  factory :user do |f| 
    f.first_name "Jimmy" 
    f.last_name "Mango"
    f.email "jimmy@mango.com"
    f.password "pppppp" 
    f.job_type "roofer"
    f.zipcode "90049"
    f.date_available "05/15"
    f.skill_set "roofer"
    f.work_exp "10"


  end 
end 