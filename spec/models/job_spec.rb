require 'rails_helper'

describe Job do
  it "has a valid factory" do
    job=FactoryGirl.create(:job)
    expect(job.valid?).to eq (true)
  end
#-----------------------------------------------  
  it "is invalid without a title" do
    job=FactoryGirl.build(:job, title: nil)
    expect(job).to be_invalid
  end
#-----------------------------------------------  
  it "is invalid without a job_type" do
    job=FactoryGirl.build(:job, job_type: nil)
    expect(job).to be_invalid
  end
#-----------------------------------------------  
  it "is invalid without a salary" do
    job=FactoryGirl.build(:job, salary: nil)
    expect(job).to be_invalid
  end
#-----------------------------------------------  
  it "is invalid without a skill" do
    job=FactoryGirl.build(:job, skill: nil)
    expect(job).to be_invalid
  end
#-----------------------------------------------  
  it "is invalid without a location" do
    job=FactoryGirl.build(:job, location: nil)
    expect(job).to be_invalid
  end



end




# jobs.create(title: random_title, job_type: random_job_type, salary: random_salary, skill:random_skill, location: random_location)

