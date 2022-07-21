Rails.application.routes.draw do
 
  get 'top' => 'book#top'
  
  
  get 'books/new'
  post 'books' => 'books#create' 
  
  
  
 resources :books
end
