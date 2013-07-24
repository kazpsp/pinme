Pinner::Application.routes.draw do
  
  devise_for :users

  resources :pins


  get "home/index"
  get "home/show" 
  
  root :to => 'home#index'
  
end
