Rails.application.routes.draw do
  
  root to: 'books#top'
  
  
   patch 'books/:id' => 'books#update', as: 'update_book'
  
  
  resources :books
  
end