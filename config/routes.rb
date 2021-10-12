Rails.application.routes.draw do

  resources :authors
  namespace :admin do
    resources :users
end

scope :editores do 
  resources :categories
end
  

  
  
  

  get 'editorials/index'
  get 'editorials/show'
  get 'editorials/new'
  get 'editorials/create'
  get 'editorials/edit'
  get 'editorials/update'
  get 'editorials/delete'
  get 'editorial/:id',to: 'editorials#show'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/delete'
  get 'book/:id', to:'books#show'

 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
