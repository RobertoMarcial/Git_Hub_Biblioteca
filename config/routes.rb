Rails.application.routes.draw do
  
  
  resources :books


  resources :authors
  namespace :admin do
    resources :users
end

scope module: 'editores' do 
  resources :categories
end

resources :users do
  resources :books, :borrowings
end
  

resources :editorials do
  resources :books

end

resources :authors do 
  resources :books
end
  

  

 
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
