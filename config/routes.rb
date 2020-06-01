Rails.application.routes.draw do
  get 'info/about'
  get 'welcome/home'
  get 'modules', to: 'modules#new'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  
  resources :users,expect:[:new]  

  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
