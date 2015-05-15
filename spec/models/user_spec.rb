require 'rails_helper'

describe User do
  it "has a valid factory" do
    user=FactoryGirl.create(:user).should be_valid
    expect(user).to eq (true)
  end
#-----------------------------------------------  
  it "is invalid without a firstname" do
    user=FactoryGirl.build_stubbed(:user, first_name: nil)
    expect(user).to be_invalid

  end
#-----------------------------------------------    
  it "is invalid without a lastname" do
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



  
end