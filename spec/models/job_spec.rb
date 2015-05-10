require 'rails_helper'

describe Job do
  it "has a valid factory" do
    job=FactoryGirl.create(:job)
    expect(job.valid?).to eq (true)
  end
end




