Rails.application.routes.draw do

root 'users#index'
get '/users' => 'users#index'
# JOBS ROUTES

get '/jobs' => 'jobs#index', as: :jobs
post '/jobs' => 'jobs#create'
get 'jobs/new' => 'jobs#new', as: :new_job
get 'jobs/:id/edit' => 'jobs#edit', as: :edit_job
get 'jobs/:id' => 'jobs#show', as: :job
get 'show_matches/:id' => 'jobs#show_matches', as: :show_matches
put 'jobs/:id' => 'jobs#update'
patch 'jobs/:id' => 'jobs#update'
delete 'jobs/:id' => 'jobs#destroy'

# Seekers routes
get "signup_seeker" => "seekers#new", as: :signup_seeker
post "seekers" => "seekers#create"
get "seekers" => "seekers#index"   
get "seekers/:id" => "seekers#show", as: :seeker  
put "seekers/:id" => "seekers#update"
patch "seekers/:id" => "seekers#update"
get "seekers/:id/edit" => "seekers#edit", as: :edit_seeker
get "seekers/:id/show_all" => "seekers#show_all", as: :show_all

# Seeker API routes, need to activate these once the front end is ready to consume them...
#namespace :api do
  #get "seekers" => "seekers#index"
  #get "seekers/:id" => "seekers#show", as: :seeker
  #post "seekers" => "seekers#create"
  #patch "seekers/:id" => "seekers#update"
#end
 
# Employers routes
get "signup_employer" => "employers#new", as: :signup_employer
post "employers" => "employers#create"
get "employers" => "employers#index"
get "employers/:id/edit" => "employers#edit", as: :edit_employer
put "employers/:id" => "employers#update", as: :employer
patch "employers/:id" => "employers#update"

# Match routes

post "matches" => "matches#create", as: :matches
put "matches/:id" => "matches#update", as: :match
patch "matches/:id" => "matches#update"
  

#log in routes
get '/login'     => 'sessions#new'
post '/login'    => 'sessions#create'
delete '/logout' => 'sessions#destroy'  
end
