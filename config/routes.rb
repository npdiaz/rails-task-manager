Rails.application.routes.draw do
  # read all
  get 'tasks', to: 'tasks#index'
  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'show'
  # create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create', as: 'create'
  # edit/update
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
