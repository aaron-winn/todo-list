Rails.application.routes.draw do
  Rails.application.routes.draw do
    root 'static_todos#home'
  
    get '/index', to: 'static_todos#index'
  
    resources :todos
  
  #resources :todos

  #get '/spaghettisause', to: 'todos#index'

  #root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
