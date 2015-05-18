require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  # before :each do
  # end

  describe "GET #index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  # ------------------------------------------------
  describe "GET #new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end

    it "renders new job view" do
      get :new
      expect(response).to render_template(:new)
      expect(response).to render_template("new")
      expect(response).to render_template("jobs/new")
    end
  end
  # ------------------------------------------------
  describe "GET #show" do
    before :each do
      @test_job = Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")
      get :show, id: @test_job.id
    end

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end
  end
  # ------------------------------------------------
  describe "POST #create" do
    it "persists an item to the DB" do
      expect {Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")}.to change(Job, :count).by(1)
    end
  end
  # ------------------------------------------------
  describe "GET #edit" do
    before :each do
      @test_job = Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")
      get :edit, id: @test_job.id
    end

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end
  end
  # ------------------------------------------------
  describe "PUT/PATCH #update" do
    before :each do 
      @test_job = Job.create(title: "Cleaner") 
      get :edit, id: @test_item.id
    end

    describe "with successful update" do
      let :new_attributes do
        {
          :title => "Maid"
        }
      end
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @test_job = Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")
      get :index
    end

    it "deletes the job" do
    expect{delete :destroy, id: @test_job.id}.to change(Job, :count).by(-1)

    end
  end


end
