Rails.application.routes.draw do
  
  
  resources :categories
  resources :ariticles do
    resources :comments, only: [:create,:destroy,:update]
  end  
  devise_for :users
  root 'welcome#index'


  #get 'welcome/index'
  #get 'especial', to: 'welcome#index'

  #=begin
  #  get "/articles"  index 
  #  post "/articles"  create 
  #  delete "/articles/:id" destroy
  #  get "/articles/:id" show
  #  get "/articles/new" new
  #  get "/articles/:id/edit" edit 
  #  patch "articles:id" update 
  #  put "/articles/:id" update 
  #=end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
