Rails.application.routes.draw do
  get 'info/about'
  get 'welcome/home'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  
  resources :users

  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
