Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/list', as: 'list', to: 'todos#list'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', as: 'todo', to: 'todos#show'
  get '/todos/:id/edit', as: 'edit_todo', to: 'todos#edit'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
  get 'todos/:id/complete', as:'complete_todo', to: 'todos#complete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
