Rails.application.routes.draw do
  post '/guest_login', to:'sessions#guest'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  patch '/users/:id',  to: 'users#update'
  get  '/users/:id/edit',  to: 'users#edit'
  get  '/users/:id',  to: 'users#show'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get 'tasks/progress', to:'tasks#progress'
  post 'tasks/:id/destroy', to:'tasks#destroy'
  get 'tasks/:id', to:'tasks#edit'
  patch 'tasks/:id', to:'tasks#update'  
  get 'task_lists/:id/new', to:'tasks#new'
  post 'task_lists/:id/new', to:'tasks#create'

  resources :task_lists 
  get 'task_lists/show/:id', to:'task_lists#show'
  get 'task_lists/new', to:'task_lists#new'
  post 'task_lists/new', to:'task_lists#create'
  post 'task_lists/:id/update', to:'task_lists#update'
  get 'task_lists/edit/:id', to:'task_lists#edit'
  post 'task_lists/:id/destroy', to:'task_lists#destroy'

  get 'static_pages/top'  
  root to: 'static_pages#top'
end
