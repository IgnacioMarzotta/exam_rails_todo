Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', as: 'todo', to: 'todos#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
