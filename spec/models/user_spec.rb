require 'rails_helper'

describe User do
  it "has a valid factory" do
    user=FactoryGirl.create(:user).should be_valid
    expect(user).to eq (true)
  end
#-----------------------------------------------  
  it "is invalid without a first name" do
    user=FactoryGirl.build_stubbed(:user, first_name: nil)
    expect(user).to be_invalid

  end
#-----------------------------------------------    
  it "is invalid without a last name" do
    user=FactoryGirl.build_stubbed(:user, last_name: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a password" do
    user=FactoryGirl.build_stubbed(:user, password: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a email" do
    user=FactoryGirl.build_stubbed(:user, email: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a jobtype" do
    user=FactoryGirl.build_stubbed(:user, job_type: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a zipcode" do
    user=FactoryGirl.build_stubbed(:user, zipcode: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a date_available" do
    user=FactoryGirl.build_stubbed(:user, date_available: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a skill_set" do
    user=FactoryGirl.build_stubbed(:user, skill_set: nil)
    expect(user).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a work_exp" do
    user=FactoryGirl.build_stubbed(:user, work_exp: nil)
    expect(user).to be_invalid
  end

end