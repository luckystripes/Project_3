require 'rails_helper'

RSpec.describe JobsController, type: :controller do

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

    it "returns http success" do
      expect(response.status).to eq(200)
    end
  end
# ------------------------------------------------
  describe "GET #create" do
    before :each do
      @job = Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")
      get :create
    end

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end

    # it "redirects to jobs index" do
    #   get :index
    #   expect(response).to redirect_to(:index)
    # end

    # it "renders new job view" do
    #   get :new
    #   expect(response).to render_template(:new)
    #   expect(response).to render_template("new")
    #   expect(response).to render_template("jobs/new")
    # end
  end
# ------------------------------------------------
  describe "GET #edit" do
    before :each do
      @test_job = Job.create(title: "cleaner", job_type: "part time", salary: "8.00", skill: "cleans well", location: "venice")
      get :edit, id: @test_job.id
    end

    it "returns http success" do
      expect(response.status).to eq(200)
    end
  end
# ------------------------------------------------
  describe "GET #update" do
   
  end

  describe "GET #destroy" do
   
  end


end
