require 'rails_helper'

describe User do
  it "has a valid factory" do
    user=FactoryGirl.create(:user).should be_valid
    expect(user).to eq (true)
  end
#-----------------------------------------------  
  it "is invalid without a firstname" do
    user=FactoryGirl.create(:user, first_name: nil)
    expect(user.first_name).to be_invalid

  end
#-----------------------------------------------    
  it "is invalid without a lastname" do
    user=FactoryGirl.create(:user, last_name: nil)
    expect(user.last_name).to be_invalid
  end
#-----------------------------------------------    
  it "is invalid without a password" do
    user=FactoryGirl.create(:user, password: nil)
    expect(user.password).to be_invalid
  end
end