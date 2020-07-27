Rails.application.routes.draw do
  resources :semesters
  get 'info/about'
  get 'welcome/home'
  get 'welcome/registered', to: 'welcome#registered'
  get 'welcome/loggedin', to: 'welcome#loggedin'
  get 'createmods', to: 'mods#new'
  get 'mods', to: 'mods#index'

  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get 'search', to: 'mods#search'

  resources :users,expect:[:new] 
  resources :mods
  resources :semesters
  resources :user_mods
  get 'user_mods', to: 'user_mods#index'

  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
