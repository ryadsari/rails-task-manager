Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#tasks'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#more', as: :task
  post "tasks", to: "tasks#create"
end
