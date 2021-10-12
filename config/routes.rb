Rails.application.routes.draw do

  resources :authors
  resources :users
  

  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/delete'
  get 'category/:id', to: 'categories#show'
  
  

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
