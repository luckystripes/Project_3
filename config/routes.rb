Rails.application.routes.draw do
# JOBS ROUTES
  root 'jobs#index'
  get '/jobs' => 'job#index'
  post '/jobs' => 'jobs#create'
  get 'jobs/new' => 'jobs#new', as: :new_job
  get 'jobs/:id/edit' => 'jobs#edit', as: :edit_job
  get 'jobs/:id' => 'jobs#show', as: :job
  put 'jobs/:id' => 'jobs#update'
  patch 'jobs/:id' => 'jobs#update'
  delete 'jobs/:id' => 'jobs#destroy'

# Seekers routes
get "signup_seeker" => "seekers#new", as: :signup_seeker
post "seekers" => "seekers#create"
get "seekers" => "seekers#index"
  


#log in routes
get '/login'     => 'sessions#new'
post '/login'    => 'sessions#create'
delete '/logout' => 'sessions#destroy'  
end
